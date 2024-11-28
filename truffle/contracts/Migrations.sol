// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;
contract Migrations{
    address public owner=msg.sender;
    uint public last_completed_migrations;

    modifier restricted(){
        require(msg.sender==owner,"This message is restricted to owner");
        _;
    }
    function setCompleted(uint completed) public restricted{
        last_completed_migrations=completed;
    }
}