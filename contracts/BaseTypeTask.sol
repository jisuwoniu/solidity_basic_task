// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract BaseTypeTask{

    int public number01=5;

    int public number02=10;

    int private number03=15;
    uint public  uint01=11;

    bool public flag01=true;

    bool public flag02=false;
    
    address public address01=0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    enum Sex{
        Male,
        Female
    }
    Sex public sex=Sex.Female;


}