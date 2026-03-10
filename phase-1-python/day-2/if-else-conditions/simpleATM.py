balance=int(input("enter your total balance : "))
with_draw=int(input("enter amount to withdraw : "))
if balance < with_draw:
    print("bank balance is not sufficient...")
elif with_draw<=0:
    print("invalid amount ")
else:
    after_withdraw=balance-with_draw
    print("amount withdrawed successfully...")
    print("total balance ", after_withdraw)