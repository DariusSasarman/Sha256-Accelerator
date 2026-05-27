from HAL import Sha256Accelerator
import hashlib
import random

sha = Sha256Accelerator()

def check(name, data: bytes):
    fpga = sha.encode(data)
    ref = hashlib.sha256(data).digest()
    print(f"\n[TEST] {name}")
    print(f"Input size: {len(data)}")
    print(f"FPGA: {fpga.hex()}")
    print(f"REF : {ref.hex()}")

    assert fpga == ref, f"Mismatch in {name}"

check("empty", b"")
check("1 byte", b"a")
check("2 bytes", b"ab")
check("55 sync-ish", b"\x55" * 64)
check("255 bytes", bytes([i % 256 for i in range(255)]))
check("256 bytes", bytes([i % 256 for i in range(256)]))
check("511 bytes", bytes([i % 256 for i in range(511)]))
check("512 bytes", bytes([i % 256 for i in range(512)]))
check("zeros", b"\x00" * 128)
check("ones", b"\xFF" * 128)
check("ABC repeat", b"ABC" * 100)
for i in range(20):
    size = random.randint(1, 2000)
    data = bytes(random.getrandbits(8) for _ in range(size))
    check(f"fuzz_{i}_size_{size}", data)
data = bytes(random.getrandbits(8) for _ in range(10000))
check("stress_10k", data)

print("\nALL TESTS PASSED")