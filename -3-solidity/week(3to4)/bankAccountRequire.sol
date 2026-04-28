//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Bankaccount{
    struct details{
        string BankName;
        uint pin;
        uint balance;
        uint deposit;
        uint withdraw;
        bool isOpen;
    }
    details public d;

    constructor(string memory _bankname,uint _pin){
        d.BankName=_bankname;
        d.pin=_pin;
        d.balance=0;
        d.isOpen=true;
    }
    function withDraws(uint amount)public {
        require(d.balance>0,"inSufficient bank balance");
        require(amount>0,"withdraw money must be greater than 0");
        d.balance=d.balance-amount;
    }
    function deposits(uint amount)public {
        require(amount>0,"deposit money must be greater than 0");
        d.balance=d.balance+amount;
    }







}