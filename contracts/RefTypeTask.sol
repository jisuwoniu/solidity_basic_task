// SPDX-License-Identifier: MIT
pragma solidity ^0.8;
contract RefTypeTask {
   
    int[] public intarrs ;
    uint[] public uint_arrs;
    address[] public addr_arrs;
    bool[] public bool_arrs;
    bytes32[] public bytes32_arrs;
    string[] public str_arrs;
    struct Person{
        string name;
        uint8 age;
        bool sex;
    }

    function sayHelle() public pure returns (string memory){

        string memory str = "hello world";
        return str;
    }

    Person public zhangsan =  Person("zhangsan", 18, true);
    Person public wangwu= Person({name:"wangwu",age:19,sex:true});


}