//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    uint  favoriteNumber ;

    struct People {
        uint favoriteNumber;
        string name;
    }

    People[] public people;
    mapping(string => uint256) public nameToNumber;

    function create(uint _favoriteNummber) public {
        favoriteNumber = _favoriteNummber;
    }
    function retrive() public view returns(uint256) {
        return favoriteNumber;
    }
    function addPeople(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToNumber[_name] = _favoriteNumber;
    } 

}