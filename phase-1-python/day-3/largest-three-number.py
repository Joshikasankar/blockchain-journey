def largestNumber(n1,n2,n3):    #with parameter without returntype
    if n1>n2 and n1>n3:
        print(n1," is greater than ",n2," and ",n3)
    elif n2>n3:
        print(n2," is greater than ",n1," and ",n3)
    elif n1==n2==n3:
        print("all three numbers are equal")
    else:
        print(n3," is greater than ",n1," and ",n2)

num1=int(input("enter number1 : "))
num2=int(input("enter number2 : "))
num3=int(input("enter number3 : "))
largestNumber(num1,num2,num3)