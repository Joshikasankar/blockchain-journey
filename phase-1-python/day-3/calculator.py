def add(a,b):                 #with parameter with return type
    return a + b
def sub(c,d):
    return c-d
def mul(e,f):
    return e*f
def div(g,h):
    if h==0:
        return "invalid input!! cannot divided ny zero"
    return g/h
def mod(i,j):
    return i%j

n1=int(input("enter 1st number : "))
n2=int(input("enter 2nd number : "))
print("add : ",add(n1,n2))
print("sub : ",sub(n1,n2) )  
print("mul : ",mul(n1,n2)) 
print("div : ",div(n1,n2)) 
print("mod : ",mod(n1,n2)) 

