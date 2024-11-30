pragma solidity ^0.8.0;
import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Adoption.sol";

contract TestAddoption{
    //instance of the contract
    Adoption adoption = Adoption(DeployedAddresses.Adoption());
    //expected pet id
    uint expectedPetId = 8;
    //expected petOwner address
    address expectedAdopter = address(this);

//testing the adopt function
    function testUserCanAdoptPet() public {
        uint returnedId = adoption.adopt(expectedPetId);
        Assert.equal(returnedId, expectedPetId,
         "Expected pet did not returned.");
    }
//
    function testGetAdopterAddressByPetId() public {
        address adopter = adoption.adopters(expectedPetId);
        Assert.equal(adopter, expectedAdopter, 
        "Owner of the pet is not the same as the contract");
    }

    function testGetAdopterAddressByPetIdInArray() public {
        address[16] memory adopters = adoption.getAdopters();
        Assert.equal(adopters[expectedPetId], expectedAdopter,
         "Owner of the expected pet should be this contract");
    }
}