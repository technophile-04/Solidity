//SPDX-License-Identifier: GPL-3.0
 
pragma solidity >=0.5.0 <0.9.0;
 
contract A{
    string[] public crypto= ['BTC', 'ETH', 'BNB'];
    
    // Here s is created new array insider memory there it did not changed state variable
    // Kind of deep copy
    function myFunctionMem() public{
        string[] memory s = crypto;
        s[2] = 'XMR';
    }

    // Since here while declaring we have said storage therefore we s is referecing to same postion where crypto is pointing therefore my state variable is changed
    // Kind of shallow copy
    function myFunctionStor() public{
        string[] storage s = crypto;
        s[2] = 'XMR';
    }
}