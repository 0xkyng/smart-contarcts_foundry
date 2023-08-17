// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract CohortNine {

    uint256 mySerialNumber;

    struct Member {
        string name;
        uint256 serialNumber;
    }

    // craeting a new member
    // Member public newMember = Member("pelz", 15);

    // craeting a list of members
    // using a dynamic array
    Member[] public listOfMembers;

    // Add members
    // update the list
    function addMembers(string memory _name, uint256 _serialNumber) public {
        // Add a member to the array
        listOfMembers.push(Member(_name, _serialNumber));
    }

}