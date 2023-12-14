from sys import argv
from winsound import Beep
from os import system as cmd
def clr(): cmd("cls")
tools = {}
args = argv
args = args[1:]
if not args == ["frombatch", "111", "222"]:
    Beep(1000,3000)
    quit("LOAD USING THE LOADER (MAIN.BAT)")
    
def runbatch(filename:str):
    output = cmd(f"call {filename}")
    if output == 1:
        quit(9009)
with open("vars.py",'r') as file:
    exec(file.read())
print("""
( ___)(_  _)( \( )   (  )  (  _  )  /__\  (  _ \( ___)(  _ \   ( ___)(  )(  )(  )  (  )  
 )__)  _)(_  )  (     )(__  )(_)(  /(__)\  )(_) ))__)  )   /    )__)  )(__)(  )(__  )(__ 
(__)  (____)(_)\_)   (____)(_____)(__)(__)(____/(____)(_)\_)   (__)  (______)(____)(____)""")
i=0
assigned = {}
for toolname,toolfilename in tools.items():
    i+=1
    assigned[i] = toolfilename
    print(f"[{i}] {toolname}")

usrinpt = input()
print(f"inpt: {usrinpt}. assigned: {assigned}")
try:
    usrinpt = int(usrinpt)
except ValueError:
    print(f"{usrinpt} is not a number.")
    exit()
try:
    runbatch(assigned[usrinpt])
except KeyError:
    print("Invalid Option.")
    exit()
