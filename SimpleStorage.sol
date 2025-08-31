//SPDX-License-Identifier: MIT
pragma solidity 0.8.18; //stating our solidity version

contract SimpleStorage {
    //defaults to 0 if no value is given
    uint256 public myFavoriteNumber;

    uint256[] listOfFavoriteNumbers; // [0, 78, 90] 

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    //dynamic array
    Person[] public listOfPeople; //[]

    //mapping data structure that is a string but points to a uint256
    //ex. chelsea -> 232
    mapping(string => uint256) public nameToFavoriteNumber;

    // Person public pat = Person({favoriteNumber: 7, name: "Pat"});
    // Person public mariah = Person({favoriteNumber: 16, name: "Mariah"});
    // Person public jon = Person({favoriteNumber: 12, name: "Jon"});


    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }

    //calldata, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // _name = "cat";
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}

//