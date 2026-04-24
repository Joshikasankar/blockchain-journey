// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract reportCard{
    struct data{
        string Sname;
        uint MathMark;
        uint ScienceMark;
        bool isPassed;
        uint totalMarks;
    }
    data public Stdata;
    function addStudent(string memory _stname,uint _mMark,uint _sMark)public {
        Stdata.Sname=_stname;
        Stdata.MathMark=_mMark;
        Stdata.ScienceMark=_sMark;
        Stdata.isPassed = false;
        Stdata.totalMarks=_mMark + _sMark;
    }
    function markasPassed()public{
        Stdata.isPassed = true;
    }
    function getTotalMarks()public view returns(uint){
        return Stdata.MathMark + Stdata.ScienceMark;
    }
    function passPercentage(uint _totalMarks)public pure returns(uint){
            return (_totalMarks * 100) / 200 ;
    }
}