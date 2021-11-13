//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Owned {
    
    constructor() {owner = msg.sender; }
    address owner;
}

contract Child1 is Owned {
    
    enum Directions {LEFT, RIGHT}

    function doThings() virtual public {
        
        Directions myDir
        emit NewEvent(myDir.LEFT)
        
    }
}