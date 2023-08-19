// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract CohortNine {

    // uint256 mySerialNumber;

    // struct Member {
    //     string name;
    //     uint256 serialNumber;
    // }

    // enum Status {
    //     Admitted,
    //     Pending,
    //     Evicted,
    //     Graduated
    // }

    // // Default value of the enum is the first element
    // // Listed in the defination of type.
    // Status public status;

    // // Enums are zero-based indexed
    // // i.e;
    // // Admitted = 0;
    // // Pending  = 1;
    // // Evicted  = 2;
    // // Graduated = 3;

    // // craeting a new member
    // // Member public newMember = Member("pelz", 15);

    // // craeting a list of members
    // // using a dynamic array
    // Member[] public listOfMembers;

    // mapping (string => uint256) public nameToSerialNumber;

    // // Add members
    // // update the list
    // function addMembers(string memory _name, uint256 _serialNumber) public {
    //     // Add a member to the array
    //     listOfMembers.push(Member(_name, _serialNumber));
    //     // update the list(mapping)
    //     nameToSerialNumber[_name] = _serialNumber;
    // }

    // function getEnum() public view returns(Status) {
    //     return status;
    // }

    // function setEnum(Status _status) public {
    //     status = _status;
    // }

    // // update to a specific enum
    // function evicted() public {
    //     status = Status.Evicted;
    // }

     //----------------------------------------------------------------------------------------------------------------------------
    // STRUCTS & MAPPINGS
    struct Student {
        string name;
        uint256 age;
        string sex;
        string level;
    }

    mapping (address => Student ) public studentDetails;

    //xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

    // MAPPING

    mapping (address => uint) public balances;

    // get the default balances
    function getBalance() public view returns (uint) {
        return balances[msg.sender];
    }

    // set balance
    function setBalance(uint _amount) public returns (uint) {
        balances[msg.sender] = _amount;
        return _amount;
    }
    //xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


    function addStudent(string memory _name, uint256 _age, string memory _sex, string memory _level, address user) public   {
        Student storage newStudent = studentDetails[user];
        newStudent.name = _name;
        newStudent.age = _age;
        newStudent.sex = _sex;
        newStudent.level = _level;
        
    }
    //-----------------------------------------------------------------------------------------------------------------------------

    //..............................................................................................................................
    
    // ARRAYS
        // 1. Memory array decalration
        function memoryArray() public {
            uint[] memory newArray = new uint [](15);
            // add values
            newArray[0] = 5;
            // read values
            newArray[0];
            // update a value
            newArray[0] = 7;
            // delete 
            delete newArray[9];
        }
    //..............................................................................................................................

    //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
          // MAPPINGS DETAILED
        mapping (address => uint)balance;

     function onMappings() public {
      // add element to the map
      balance[msg.sender] = 100;
      // read
      balance[msg.sender];
      // update
      balance[msg.sender] = 200;
      // delete
      delete balance[msg.sender];
    }
    //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

}