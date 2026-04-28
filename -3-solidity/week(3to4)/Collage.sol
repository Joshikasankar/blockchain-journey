//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Collage{
    struct CollageDetails{
        string ColageName;
        string CollagePrincipal;
        uint totalStudent;
        uint totalFees;
        bool isOpen;
    }
    CollageDetails public cd;
    constructor(string memory collage,string memory principal){
            cd.ColageName=collage;
            cd.CollagePrincipal=principal;
            cd.totalStudent = 0;
            cd.totalFees=0;
            cd.isOpen=true;
    }
    function addStudent()public{
        cd.totalStudent=cd.totalStudent+1;
         
    }
    function removeStudent()public {
        require(cd.totalStudent>0,"no student exist");
        cd.totalStudent=cd.totalStudent-1;
    }
    function collectFees(uint amount)public{
            cd.totalFees=cd.totalFees+amount;
    }
    function studentCount()public view returns(uint){
        
            return cd.totalStudent;
            
    }
    function totalFees()public view returns(uint){
       
            return cd.totalFees;
    }
    
    function feesPerStudent(uint fees , uint student)public view returns(uint){
         require(cd.totalStudent>0,"student cannot be zero");
        return fees/student ;
    }

}