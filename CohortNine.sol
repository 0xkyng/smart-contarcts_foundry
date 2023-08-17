// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract CohortNine {

    uint256 mySerialNumber;

    struct Member {
        string name;
        uint256 serialNumber;
    }

    Member public newMember = Member("pelz", 15);

}