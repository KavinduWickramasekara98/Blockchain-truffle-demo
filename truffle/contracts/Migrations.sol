// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;
contract Migrations{
    address public owner; //meg.sender
    uint public last_completed_migrations;

    modifier restricted(){
        require(msg.sender==owner,"This message is restricted to owner");
        _;
    }
    function setMigrations(uint completed) public restricted{
        last_completed_migrations=completed;
    }
}