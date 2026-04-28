// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ShopInventory{

    struct details{
        string shopName;
        string OwnerName;
        uint items;
        uint revenue;
        bool ShopOpen;
    }
    details public d;

    constructor(string memory _shopName,string memory _OwnerName){
            d.shopName=_shopName;
            d.OwnerName=_OwnerName;
            d.items=100;
            d.revenue=0;
            d.ShopOpen=true;
    }

    function sellItem(uint _quantity,uint priceperItem)public {
           require(d.ShopOpen==true,"shop is closed");
           require(d.items>=_quantity,"no stock!!!........");
           require(_quantity>0,"quantity must be greater than 0");
           d.items=d.items-_quantity;

           d.revenue=d.revenue+(_quantity*priceperItem);
    }
    function restockItem(uint quantity)public{
            require(quantity>0,"quantity must greater");
            d.items=d.items+quantity;
    }
    function IsshopOpen()public {
            require(d.ShopOpen==true,"shop is already closed");
            d.ShopOpen=false;
    }
    function revenue()public view returns(uint){
        return d.revenue;
    }
    function ProfitOrLoss(uint cost,uint _revenue)public pure returns(uint){
             
            require(_revenue>cost,"no profit");
            return _revenue-cost;
            
    }
}