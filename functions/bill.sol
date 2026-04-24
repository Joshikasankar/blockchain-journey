// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Bill{
    struct inVoice {
        string sellername;
        string buyername;
        uint amount;
        bool isPaid;
    }
    inVoice public myInvoice;

    function details(string memory _seller,string memory _buyer,uint _amount) public{
        myInvoice.sellername = _seller;
        myInvoice.buyername = _buyer;
        myInvoice.amount = _amount;
        myInvoice.isPaid = false;
    }
    function makeasPaid()public{
        myInvoice.isPaid = true;
    }
    function amounts()public view returns(uint){
        return myInvoice.amount;
    }
    function calculateTax(uint tax)public pure returns(uint){
        return (tax *18)/100;
    }
}