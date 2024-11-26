const Fruits = artifacts.require("./Fruits.sol");

module.exports = function (deployer) {
  deployer.deploy(Fruits);
};
