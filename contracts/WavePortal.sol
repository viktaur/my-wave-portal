// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;

    address[] array;

    constructor() {
        console.log("I don't care");
    }

    function wave() public {
        totalWaves += 1;
        array.push(msg.sender);
        console.log("%s has waved!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }

    function getArray() public view returns(address[] memory) {
        return array;
    }

    function getMsgSender() public view returns(address) {
        return msg.sender;
    }
}

