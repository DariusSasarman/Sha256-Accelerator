import serial

class Sha256Accelerator:
    def __init__(self):
        self.connected = False
        self.ser = serial.Serial(
            port='/dev/serial/by-id/usb-Digilent_Digilent_USB_Device_210292BD7C2F-if01-port0',
            baudrate=115200,
            bytesize=serial.EIGHTBITS,
            parity=serial.PARITY_NONE,
            stopbits=serial.STOPBITS_ONE,
            timeout=1
        )
        self.result = None

    def _sync(self):
        self.ser.write(b'\x55')
        res = self.ser.read(1)
        return res

    def _connect(self):
        self.result = None
        res = self._sync()
        if res == b'\x55':
            self.connected = True

    def _disconnect(self):
        res = self._sync()
        if res == b'\x55':

            self.ser.write(b'\x55')
            self.result = self.ser.read(32)

        self.connected = False

    def encode(self, data : bytes):
        if not self.connected :
            self._connect()

        data_len = len(data)
        written_count = 0

        while written_count < data_len:
            amount_written = min(255, data_len - written_count)
            self.ser.write(bytes([amount_written]))
            chunk = data[written_count:written_count + amount_written]
            self.ser.write(chunk)
            written_count += amount_written

        if self.connected :
            self._disconnect()

        return self.result