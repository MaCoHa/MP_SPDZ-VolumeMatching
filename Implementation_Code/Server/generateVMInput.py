import random

random.seed(0)
n = 500  # number of entities
m = 100  # max value for one entity

with open("../Scripts/Player-Data/Input-P0-0", "w") as file:
    r = [str(random.randint(1, m)) for _ in range(n)]
    file.write(" ".join(r))

with open("../Scripts/Player-Data/Input-P1-0", "w") as file:
    r = [str(random.randint(1, m)) for _ in range(n)]
    file.write(" ".join(r))
