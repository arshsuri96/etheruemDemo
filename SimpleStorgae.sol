// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage{

    uint256 public favoriteNumber;

    struct People {
        string name;
        uint256 favoriteNumber;
    }

    People[] public people;
    mapping(string => uint256) public nameTofavortienumber;

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_name, _favoriteNumber));
        nameTofavortienumber[_name] = _favoriteNumber;
    }

    function retrieve() public view returns(uint256){
        return favoriteNumber;

    }

}
