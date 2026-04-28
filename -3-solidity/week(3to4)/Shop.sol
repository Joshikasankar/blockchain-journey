//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Shop{
    struct ShopDetails{
        string ShopName;
        string OwnerName;
        uint items;
        bool isOpen;
    }
    ShopDetails public sd;
    constructor(string memory shopName,string memory ownername){
        sd.ShopName=shopName;
        sd.OwnerName=ownername;
        sd.items=0;
        sd.isOpen=true;
    }
    function addItems(uint count)public {
            sd.items=sd.items+count;
    }
    function totalItems()public view returns(uint){
            return sd.items;
    }


}