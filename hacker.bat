@echo off
color 0a
:top
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
goto top
import random
import time
import os

# Set terminal to green text (Windows)
if os.name == 'nt':
    os.system('color 0a')

chars = "0123456789ABCDEFHIJKLMNOPQRSTUVWXYZ!@#$%^&*()+-="
width = 80  # Adjust based on your terminal width

try:
    while True:
        # Create a line of random characters with occasional gaps
        line = "".join(random.choice(chars) if random.random() > 0.1 else " " for _ in range(width))
        print(f"\033[32m{line}\033[0m") # Prints in green
        time.sleep(0.05) 
except KeyboardInterrupt:
    print("\nStopping...")


