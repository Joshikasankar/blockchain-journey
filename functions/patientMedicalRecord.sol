// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Hospital{
    struct Details{
        string patientName;
        uint age;
        string bloodGroup;
        bool isAddmited;
    }
    Details public D;
    function addPatient(string memory _patient ,uint _age,string memory _bloodGroup)public {
        D.patientName = _patient;
        D.age=_age;
        D.bloodGroup=_bloodGroup;
        D.isAddmited = false;
    }
    function admitPatient ()public {
        D.isAddmited=true;
    }
    function dischargePatient ()public{
        D.isAddmited=false;
    }
    function getAge ()public view returns(uint){
        return D.age;
    }
    function calculateBMI (uint weight,uint height) public pure returns(uint){
       return (weight * 10000) / (height * height);
    }

}