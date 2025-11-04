// SPDX-License-Identifier: MIT
pragma solidity ^0.8;
contract ArrayTask{
    uint[] public dynamicArrays;
    uint[3] public staticArrays001;
    uint[3] public staticArrays002=[1,2,3];
    string public str01="Hello World";
    function staticArrayforValue(uint a) public{
        staticArrays001[0]=a;
    }

    function setDynamicArrays(uint a) public{
        dynamicArrays.push(a);
    }
    function getCharByIndex(uint index) public view returns(string memory){
        bytes memory strBytes = bytes(str01);
        uint length = strBytes.length;
        bytes memory result=new bytes(length);
        if(index<=length-1){
            result[0]=(strBytes[index]);
            return string(result);
        }
        return string(result);
    }

}