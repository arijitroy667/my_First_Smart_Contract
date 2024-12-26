//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19; // ^ - shows that it will work with 0.8.19 version and above

contract SimpleStorage{
    // Basic Types: boolean, uint, int, address, bytes
  
   uint256[] listOfFavouriteNumbers; // Array

   struct Person{
      uint256 favouriteNumber;
      string name;
   }
   
   //dynamic array
   Person[] public listOfPeople;

   mapping(string => uint256) public nametoFavouriteNumber;

   // view - view functions are "read-only" and do not modify any state.
   // pure - pure functions are also "read-only," but with the additional guarantee that they don't access storage.
  

   function addPerson(string memory _name, uint256 _favouriteNumber) public {
       listOfPeople.push(Person(_favouriteNumber, _name));
       nametoFavouriteNumber[_name]=_favouriteNumber;
   }

   // calldata - temp. variables that cannot be modified
   // memeory - temp. variables that can be modified
   // storage - permanent variables that can be modified
}

