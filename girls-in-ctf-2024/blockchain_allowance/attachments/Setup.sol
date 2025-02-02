// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./Gurl.sol";

contract Setup {
    Gurl public challengeInstance;

    constructor() payable {
        
        challengeInstance = new Gurl{value: 1 ether}();
    }

   
    function isSolved() public view returns (bool) {
        
        return challengeInstance.owner() != address(this);
    }
}
