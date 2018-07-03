
x1 = 0
v1 = 3
x2 = 5
v2 = 3


def kangaroo(x1, v1, x2, v2):
    if (x1 < x2 and v1 < v2) or (x2 < x1 and v2 < v1):
        return "NO"
    elif ((v2-v1) != 0) and (x1 - x2) % (v2 - v1) == 0:
        return "YES"
    else:
        return "NO"


d = kangaroo(x1, v1, x2, v2)
print(d)
