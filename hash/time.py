hash = {}
num = 1000000
num_ops = 0
for i in range(num):
    hash[i] = 1
    num_ops += 1
for j in (2,3,4,5,6):
    for i in range(0, num, j):
        del hash[i]
        num_ops += 1
    for i in range(0, num, j):
        hash[i] = 1
        num_ops += 1
print(num_ops)
