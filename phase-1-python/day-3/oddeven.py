def oddEven(n):     #with parameter without return type
    if(n%2==0):
        print(n," is even number")
    else:
        print(f"{n} is odd number")
n=int(input("enter number : "))
oddEven(n)