// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // this is the solidity version

contract SimpleStorage{
    // favourite number is initialise to 0 if no value is given

    uint256 myFavouriteNumber; // 0

    // uint256[] listOfFavouriteNumbers;
    struct Person {
        uint256 favouriteNumber;
        string name;
    }
    
    //dynamic array
    Person[] public listOfPeople; // []

    mapping(string => uint256) public nameToFavouriteNumber;

    function store(uint256 _favouriteNumber) public virtual {
        myFavouriteNumber =_favouriteNumber;  // + 5
}
  //view. pure
  function retrieve() public view returns(uint256){
    return myFavouriteNumber;
  }

  // calldata, memory, storage
 function addPerson(string memory _name, uint256 _favouriteNumber) public {
   listOfPeople.push( Person(_favouriteNumber, _name) );
   nameToFavouriteNumber[_name] = _favouriteNumber;
 }
}

contract SimpleStorage2 {}
contract SimpleStorage3 {}
contract SimpleStorage4 {}

