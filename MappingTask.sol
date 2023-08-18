// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Token {
    string public name;
    uint256 public totalCirculation;

    mapping  (address => bool) public allowList;
    mapping  (address => uint) balance;

    function getToken(uint amount) public{
        require(allowList[msg.sender] == true, "Not on allow list");
        balance[msg.sender] = amount;
    }

}