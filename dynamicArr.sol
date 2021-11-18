// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract DynamicArr {
    
    uint[] public arr;
    
    function getLength() public view returns(uint){
        return arr.length;
    }
    
    function setElement(uint no) public {
            
        arr.push(no);
        
    }
    
    function getElement(uint index) public view returns(uint){
        
        if(index >= arr.length){
            return 0;
        }
        
        return arr[index];
        
    } 
    
    
    function createMemArr() public {
        uint[] memory newArr = new uint[](3);
        // it's not possible to resize memory arrays (push() and pop() are not available).
        // Thhis array is sotred in memory
    }
       
}