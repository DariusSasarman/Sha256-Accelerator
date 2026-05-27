from HAL import Sha256Accelerator

while True:
    sha = Sha256Accelerator()
    print("Please enter the string you'd like to encode:")
    data = input("> ").encode()
    result = sha.encode(data)
    print("Result:",result.hex())
