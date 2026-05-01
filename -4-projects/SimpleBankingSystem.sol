//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleBankingSystem{
    string public BankName;
    string public OwnerName;
    uint BankBalance;
    bool isOpen;

    constructor(string memory _BankName,string memory _OwnerName){
        BankName=_BankName;
        OwnerName=_OwnerName;
        BankBalance=4000;
        isOpen=true;
    }

    event receipt(uint amount,uint balance);

    modifier isActive{
        require(isOpen==true,"your account is in Deactivate state");
        _;
    }
    event AccountClosed(string ownerName);
    function deposit(uint amount)public isActive{
        require(amount>0,"amount must be greater than zero");
        BankBalance=amount+BankBalance;
        emit receipt(amount, BankBalance);
    }
    function withDraw(uint amount)public isActive{
        require(amount>0,"amount must be greater than zero");
        require(amount<=BankBalance,"insufficient bank balance");
        BankBalance=BankBalance-amount;
        emit receipt(amount, BankBalance);
    }
    function closeAccount()public {
        require(isOpen==true,"account already closed");
         isOpen=false;
         emit AccountClosed(OwnerName);
    }
    function GetBalance()public view isActive returns(uint) {
            return BankBalance;
    }

    function calculateInterest(uint _balance)public pure  returns(uint){
            return (_balance*4)/100;
    }
}