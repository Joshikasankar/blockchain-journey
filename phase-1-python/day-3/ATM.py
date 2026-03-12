def check_balance(balance):
    print("Your balance is:", balance)

def deposit(balance, amount):
    balance = balance + amount
    print("Deposited:", amount)
    return balance

def withdraw(balance, amount):
    if amount > balance:
        print("Insufficient balance!")
        return balance
    balance = balance - amount
    print("Withdrawn:", amount)
    return balance

# Main program
balance = 1000
check_balance(balance)
balance = deposit(balance, 500)
check_balance(balance)
balance = withdraw(balance, 200)
check_balance(balance)