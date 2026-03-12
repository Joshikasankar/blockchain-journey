def fact(n):
    if n<0:
        return "negstive numbers not possible for factorial"
    mul=1
    for i in range(1, n + 1):
        mul=mul * i
    return mul
num=int(input("enter number : "))
print("fact of ",num, " is ",fact(num))