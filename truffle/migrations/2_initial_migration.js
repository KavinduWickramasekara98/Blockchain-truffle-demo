const FruitList = artifacts.require("./Fruit.sol");

module.exports = function(deployer){
    deployer.deploy(FruitList);
}