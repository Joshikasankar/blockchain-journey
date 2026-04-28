//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Hospital{
    struct Details{
        string hospitalName;
        string DoctorName;
        uint patientCount;
        bool EmergencyOpen;
    }
    Details public d;
    constructor(string memory hospitalName,string memory doctorname){
        d.hospitalName=hospitalName;
        d.DoctorName=doctorname;
        d.patientCount=0;
        d.EmergencyOpen=true;
    }
    function admitpatient()public {
        d.patientCount=d.patientCount+1;
        
    }
    function discharge()public{
        d.patientCount=d.patientCount-1;
    }
    function CalculateBill(uint day)public pure returns(uint){
        return day*500;
    }
    }