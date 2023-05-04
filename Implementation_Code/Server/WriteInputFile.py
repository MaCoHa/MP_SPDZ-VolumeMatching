import random

Trades = input("Enter Trades:")
print("Total Trades: " + Trades)

i = 0
data = ""
while i < int(Trades):
    ran = random.randint(1,200)
    data += str(ran) + " "
    i = i+1

data = data[:-1]
file = "Buyers"+Trades+".txt"
f = open(file, "a")
f.write(data)
f.close()

#open and read the file after the appending:
f = open(file, "r")
print("Buyers inputs \n")
print(f.read())

data = ""
i = 0
while i < int(Trades):
    ran = random.randint(1,200)
    data += str(ran) + " "
    i = i+1

data = data[:-1]

file2 = "Sellers"+Trades+".txt"
f = open(file2, "a")
f.write(data)
f.close()

#open and read the file after the appending:
f = open(file2, "r")
print("Sellers inputs \n")
print(f.read())