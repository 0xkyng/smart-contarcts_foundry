// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract CohortNine {

    struct Member {
        uint256 serialNo;
        string name;
    }

    Member[] public listOfMembers;

    function addMember(string memory _name, uint256 serialNo) public {
        listOfMembers.push(Member(serialNo, _name));
         _name = "Isaac";
    }
}