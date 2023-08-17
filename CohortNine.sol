// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract CohortNine {

    uint256 mySerialNumber;

    struct Member {
        string name;
        uint256 serialNumber;
    }

    enum Status {
        Admitted,
        Pending,
        Evicted,
        Graduated
    }

    // Default value of the enum is the first element
    // Listed in the defination of type.
    Status public status;

    // Enums are zero-based indexed
    // i.e;
    // Admitted = 0;
    // Pending  = 1;
    // Evicted  = 2;
    // Graduated = 3;

    // craeting a new member
    // Member public newMember = Member("pelz", 15);

    // craeting a list of members
    // using a dynamic array
    Member[] public listOfMembers;

    mapping (string => uint256) public nameToSerialNumber;

    // Add members
    // update the list
    function addMembers(string memory _name, uint256 _serialNumber) public {
        // Add a member to the array
        listOfMembers.push(Member(_name, _serialNumber));
        // update the list(mapping)
        nameToSerialNumber[_name] = _serialNumber;
    }

    function getEnum() public view returns(Status) {
        return status;
    }

    function setEnum(Status _status) public {
        status = _status;
    }

}