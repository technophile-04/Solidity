// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Property {
    
    int public price;
    string public location;
    address public owner;
    // it is common to intiallize owener address in constructor
    
    // Difference b/w constants and immutable
    // constant variable should be intiallized during decalartion only 
    // immutable variable can also be intiallized in constructor but cannot change after the contract is created
    // compared to normal variable the gas for constant and immutable are very lower this allow for local optimization
    
    
    constructor(int _price, string memory _location){
            
            price = _price;
            location = _location;
            
            //msg.sender stores the address of the person who creates and deploys this contract
            //Note that almost any contract like, for examplelike for example erc20 token contracts or contracts for decentralized
            // finance, use this approach to register the owner that has special privileges.
            owner = msg.sender;
            
            
            
        
    }
    
    
    function setPrice(int _price) public {
        price = _price;
    }
    
    function setLocation(string memory _location) public {
        location = _location;
    }
    
    
    
}