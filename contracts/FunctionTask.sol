// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract FunctionTask{
    string public Hello = "Hell0";

    function sayHello(string memory name) public view  returns (string memory str){
        string memory newStr = string.concat(Hello," ",name);

        return newStr;

    }

    function sayHello2(string memory name) public view  returns (string memory str){
        return sayHello(name);
    }

    string public newName = "zhagnsan";

    function setName(string memory str) public{
        newName=str;

    }
    function sayHello3()public view returns (string memory str){
        return sayHello(newName);
    }
    

}