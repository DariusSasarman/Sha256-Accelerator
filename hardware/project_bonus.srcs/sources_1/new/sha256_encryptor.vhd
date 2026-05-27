library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sha256_encryptor is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           start : in std_logic;
           work_done : out std_logic;
           
           bram_clk_b   : out STD_LOGIC;
           bram_rst_b   : out STD_LOGIC;
           bram_en_b    : out STD_LOGIC;
           bram_we_b    : out STD_LOGIC_VECTOR(3 downto 0);
           bram_addr_b  : out STD_LOGIC_VECTOR(31 downto 0);
           bram_wrdata_b: out STD_LOGIC_VECTOR(31 downto 0);
           bram_rddata_b: in  STD_LOGIC_VECTOR(31 downto 0)
         );
end sha256_encryptor;

architecture Behavioral of sha256_encryptor is

type word_array is array (0 to 63) of std_logic_vector(31 downto 0);

type fsm is (IDLE, LOAD, EXTEND, COMPRESS_INIT, COMPRESS, FINALIZE, WRITE_BACK);
signal fsm_signal : fsm := IDLE;

signal iterator : unsigned(5 downto 0) := (others => '0');

signal h0,h1,h2,h3,h4,h5,h6,h7 : std_logic_vector(31 downto 0);
signal a,b,c,d,e,f,g,h : std_logic_vector(31 downto 0);
signal w : word_array := (others => x"00000000");

constant h0_init : std_logic_vector(31 downto 0) := x"6a09e667";
constant h1_init : std_logic_vector(31 downto 0) := x"bb67ae85";
constant h2_init : std_logic_vector(31 downto 0) := x"3c6ef372";
constant h3_init : std_logic_vector(31 downto 0) := x"a54ff53a";
constant h4_init : std_logic_vector(31 downto 0) := x"510e527f";
constant h5_init : std_logic_vector(31 downto 0) := x"9b05688c";
constant h6_init : std_logic_vector(31 downto 0) := x"1f83d9ab";
constant h7_init : std_logic_vector(31 downto 0) := x"5be0cd19";
constant k : word_array := (
    0  => x"428a2f98",
    1  => x"71374491",
    2  => x"b5c0fbcf",
    3  => x"e9b5dba5",
    4  => x"3956c25b",
    5  => x"59f111f1",
    6  => x"923f82a4",
    7  => x"ab1c5ed5",
    8  => x"d807aa98",
    9  => x"12835b01",
    10 => x"243185be",
    11 => x"550c7dc3",
    12 => x"72be5d74",
    13 => x"80deb1fe",
    14 => x"9bdc06a7",
    15 => x"c19bf174",
    16 => x"e49b69c1",
    17 => x"efbe4786",
    18 => x"0fc19dc6",
    19 => x"240ca1cc",
    20 => x"2de92c6f",
    21 => x"4a7484aa",
    22 => x"5cb0a9dc",
    23 => x"76f988da",
    24 => x"983e5152",
    25 => x"a831c66d",
    26 => x"b00327c8",
    27 => x"bf597fc7",
    28 => x"c6e00bf3",
    29 => x"d5a79147",
    30 => x"06ca6351",
    31 => x"14292967",
    32 => x"27b70a85",
    33 => x"2e1b2138",
    34 => x"4d2c6dfc",
    35 => x"53380d13",
    36 => x"650a7354",
    37 => x"766a0abb",
    38 => x"81c2c92e",
    39 => x"92722c85",
    40 => x"a2bfe8a1",
    41 => x"a81a664b",
    42 => x"c24b8b70",
    43 => x"c76c51a3",
    44 => x"d192e819",
    45 => x"d6990624",
    46 => x"f40e3585",
    47 => x"106aa070",
    48 => x"19a4c116",
    49 => x"1e376c08",
    50 => x"2748774c",
    51 => x"34b0bcb5",
    52 => x"391c0cb3",
    53 => x"4ed8aa4a",
    54 => x"5b9cca4f",
    55 => x"682e6ff3",
    56 => x"748f82ee",
    57 => x"78a5636f",
    58 => x"84c87814",
    59 => x"8cc70208",
    60 => x"90befffa",
    61 => x"a4506ceb",
    62 => x"bef9a3f7",
    63 => x"c67178f2"
);
begin

bram_clk_b <= clk;
bram_rst_b <= rst;

-- https://en.wikipedia.org/wiki/SHA-2#Pseudocode
process(clk, rst)
        variable s0,s1,ch,temp1,temp2,maj : std_logic_vector(31 downto 0);
        variable iterator_val : integer range 0 to 63;
    begin
        if rst = '1' then
            h0 <= h0_init; 
            h1 <= h1_init;
            h2 <= h2_init; 
            h3 <= h3_init;
            h4 <= h4_init; 
            h5 <= h5_init;
            h6 <= h6_init; 
            h7 <= h7_init;
            w  <= (others => x"00000000");
            iterator <= (others => '0');
            fsm_signal <= IDLE;
            work_done <= '0';

        elsif rising_edge(clk) then
            iterator_val := to_integer(iterator);

            case fsm_signal is
                -- Wait to start again
                -- If not "reset" 
                -- Then it acts as "for each chunk"
                when IDLE =>
                    work_done  <= '1';
                    if start = '1' then
                        work_done  <= '0';
                        iterator   <= (others => '0');
                        bram_addr_b  <= (others => '0'); 
                        bram_en_b    <= '1';
                        fsm_signal <= LOAD;             
                    end if;
                when LOAD =>
                    -- copy chunk into first 16 words w[0..15] of the message schedule array
                    -- 0x00 to 0x3C
                    bram_en_b   <= '1';
                    bram_we_b   <= "0000";
                    w(iterator_val) <= bram_rddata_b;
                    if iterator = 15 then
                        bram_en_b    <= '0';
                        iterator   <= to_unsigned(16, 6);
                        fsm_signal <= EXTEND;
                    else
                        bram_addr_b <= std_logic_vector(resize((iterator(4 downto 0) + 1)& "00", 32));
                        iterator <= iterator + 1;
                    end if;
                when EXTEND =>
                    -- for i from 16 to 63
                    s0 := std_logic_vector(rotate_right(unsigned(w(iterator_val-15)), 7))  xor
                          std_logic_vector(rotate_right(unsigned(w(iterator_val-15)), 18)) xor
                          std_logic_vector(unsigned(w(iterator_val-15)) srl 3);
                    s1 := std_logic_vector(rotate_right(unsigned(w(iterator_val-2)), 17)) xor
                          std_logic_vector(rotate_right(unsigned(w(iterator_val-2)), 19)) xor
                          std_logic_vector(unsigned(w(iterator_val-2)) srl 10);
                    w(iterator_val) <= std_logic_vector(
                        unsigned(w(iterator_val-16)) + unsigned(s0) +
                        unsigned(w(iterator_val-7))  + unsigned(s1));
                    if iterator = 63 then
                        fsm_signal <= COMPRESS_INIT;
                    else
                        iterator <= iterator + 1;
                    end if;

                when COMPRESS_INIT =>
                    -- Initialize working variables to current hash value:
                    a <= h0; b <= h1; c <= h2; d <= h3;
                    e <= h4; f <= h5; g <= h6; h <= h7;
                    iterator   <= (others => '0');
                    fsm_signal <= COMPRESS;

                when COMPRESS =>
                    -- Compression function main loop:
                    -- for i from 0 to 63
                    s1    := std_logic_vector(rotate_right(unsigned(e), 6))  xor
                             std_logic_vector(rotate_right(unsigned(e), 11)) xor
                             std_logic_vector(rotate_right(unsigned(e), 25));
                    ch    := (e and f) xor ((not e) and g);
                    temp1 := std_logic_vector(unsigned(h) + unsigned(s1) + unsigned(ch) +
                             unsigned(k(iterator_val)) + unsigned(w(iterator_val)));
                    s0    := std_logic_vector(rotate_right(unsigned(a), 2))  xor
                             std_logic_vector(rotate_right(unsigned(a), 13)) xor
                             std_logic_vector(rotate_right(unsigned(a), 22));
                    maj   := (a and b) xor (a and c) xor (b and c);
                    temp2 := std_logic_vector(unsigned(s0) + unsigned(maj));
                    h <= g; g <= f; f <= e;
                    e <= std_logic_vector(unsigned(d) + unsigned(temp1));
                    d <= c; c <= b; b <= a;
                    a <= std_logic_vector(unsigned(temp1) + unsigned(temp2));
                    if iterator = 63 then
                        fsm_signal <= FINALIZE;
                    else
                        iterator <= iterator + 1;
                    end if;

                when FINALIZE =>
                    -- Add the compressed chunk to the current hash value:
                    h0 <= std_logic_vector(unsigned(h0) + unsigned(a));
                    h1 <= std_logic_vector(unsigned(h1) + unsigned(b));
                    h2 <= std_logic_vector(unsigned(h2) + unsigned(c));
                    h3 <= std_logic_vector(unsigned(h3) + unsigned(d));
                    h4 <= std_logic_vector(unsigned(h4) + unsigned(e));
                    h5 <= std_logic_vector(unsigned(h5) + unsigned(f));
                    h6 <= std_logic_vector(unsigned(h6) + unsigned(g));
                    h7 <= std_logic_vector(unsigned(h7) + unsigned(h));
                    fsm_signal <= WRITE_BACK;
                    iterator <= (others => '0');
                when WRITE_BACK =>
                    -- write h0..h7 to BRAM addresses 16..23 
                    -- (byte addr 0x40..0x5C)
                    bram_en_b    <= '1';
                    bram_we_b    <= "1111";
                    bram_addr_b  <= std_logic_vector(
                        resize((to_unsigned(16, 6) + iterator(2 downto 0)) & "00", 32));
                    case iterator(2 downto 0) is
                        when "000" => bram_wrdata_b <= h0;
                        when "001" => bram_wrdata_b <= h1;
                        when "010" => bram_wrdata_b <= h2;
                        when "011" => bram_wrdata_b <= h3;
                        when "100" => bram_wrdata_b <= h4;
                        when "101" => bram_wrdata_b <= h5;
                        when "110" => bram_wrdata_b <= h6;
                        when "111" => bram_wrdata_b <= h7;
                        when others => bram_wrdata_b <= (others => '0');
                    end case;
                    if iterator = 7 then
                        bram_en_b  <= '0';
                        bram_we_b  <= "0000";
                        work_done  <= '1';
                        fsm_signal <= IDLE;
                    else
                        iterator <= iterator + 1;
                    end if;
            end case;
        end if;
    end process;
end Behavioral;
