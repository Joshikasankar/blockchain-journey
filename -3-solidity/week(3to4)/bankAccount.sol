//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract bankAccount{
    string public bankName;
    string public accountHolder;
    uint public balance;
    bool isActive;

    constructor(string memory _Bankname,string memory _AccH,uint _balance){
        bankName=_Bankname;
        accountHolder=_AccH;
        balance=_balance;
        isActive=true;
    }
    function setAccountHolder(string memory _accName)public {
        accountHolder=_accName;
    }
    function deposit(uint amount)public{
        balance=balance+amount;
    }
    function getBalance ()public view returns(uint){
        return balance;
    }
}