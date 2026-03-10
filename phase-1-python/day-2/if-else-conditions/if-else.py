n=int(input("enter number  : "))
n1=int(input("enter another number : "))
n2=int(input("enter 3rd number : "))
mark=int(input("enter marks : "))
ch=input("enter any character")
if (n%2==0):
    print(n," is even number")
else:
    print(n," is odd number")
print("-------------------------------------------")
#eligible checking
if(n>=18):
    print("you are eligible..")
else:
    print("you are not eligible")
print("-------------------------------------------")
#largest number
if(n>n1):
    print("the greatest number between ",n ," and ",n1," is ",n)
else:
    print("the greatest number between ",n ," and ",n1," is ",n1)
print("-------------------------------------------")
#negative , positive or zero

if(n>0):
    print(n," is positive number")
elif(n==0):
    print(n," is equal to 0")
else:
    print(n," is negative number")
print("-------------------------------------------")
#leap year or not
if(n%400==0 or (n%4==0 and n%100!=0)):
    print("leap year")

else:
    print("not a leap year")
print("-------------------------------------------")
#divisible by 5 or not 
if(n%5==0):
    print(n1," is divisible by 5")
else:
    print(n," is not divisible by 5")
print("-------------------------------------------")
#largest among 3 numbers
if((n>n1) and (n>n2)):
    print(n, " is greater among ",n1 ," and ",n2)
elif(n1>n2):
    print(n1, " is greater among ",n ," and ",n2)
else:
    print(n2, " is greater among ",n ," and ",n1)
print("-------------------------------------------")
#pass or fail
if(mark>40):
    print(mark," you are pass with the difference of : ",mark-40)
else:
    print(mark," sorry you are fail in difference : ",40-mark)
print("-------------------------------------------")
#vowel consonant
if((ch=='a' or ch=='e' or ch=='i' or ch=='o' or ch=='u')):
    print(ch," is vowels")
else:
    print(ch," is consonents")
print("-------------------------------------------")
#discount

purchase_amount = int(input("Enter your purchase amount: "))
discount = int(input("Enter your discount %: "))

if purchase_amount >= 1000:
    discount_amount = (purchase_amount * discount) / 100
    total = purchase_amount - discount_amount
    print("Discount amount: ", discount_amount)
    print("Total after discount: ", total)
else:
    print("No discount. Minimum purchase is 1000")