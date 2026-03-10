secret_no=7
attempt=0

while True:
    n=int(input("enter a number from(1-10): "))
    attempt=attempt+1
    if n>secret_no:
        print("number is too high try again")
    elif n<secret_no:
        print("number is too low try again")
    else:
        print("you are correct you find in ",attempt,"attempt")
        break
