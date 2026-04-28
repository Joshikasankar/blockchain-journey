//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ATM{
        string public bankName;
        string public userName;
        uint public balance;
       bool isActive;

        constructor(string memory _bankName,string memory _username){
            bankName=_bankName;
            userName=_username;
            balance=20000;
            isActive=true;
        }
        function deposit(uint amount)public returns (string memory){
                 
                require(amount>0,"amount must be greater than zero");
                balance=balance+amount;
                return "deposited sucessfully";
        }
        function withdraw(uint amount)public returns(string memory){
                
                require(amount>0,"amount must be greater than zero");
                require(amount<=balance,"amount must be greater than zero");
                balance=balance-amount;
                return "amount withdraw sucessfully";
        }
        function deActivate()public {
                require(isActive==true," it is deActived");
                isActive=false;
        }
        function getBalance()public view returns(uint){
                return balance;
        }
        function calculateCharges(uint amount)public pure returns(uint){
                 require(amount>0,"amount must be greater than zero");
                return (amount*2)/100;
        }

}