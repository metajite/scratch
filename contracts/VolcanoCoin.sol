//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract VolcanoCoin {
    
    uint totalSupply = 10000;
    address owner;
    event NewTotal(uint _newTotal);
    
    constructor(){
        owner = msg.sender;
    }
    
    modifier onlyOwner(){
        if (msg.sender == owner){
            _;
        }
    }
    
    function getTotalSupply() public view returns(uint){
        return totalSupply;
    }
    
    function setTotalSupply() public onlyOwner{
        totalSupply += 1000;
        emit NewTotal(totalSupply);
    }
    
}