var CalculatorContract = artifacts.require("./Calcultor.sol");

module.exports = function(deployer) {
  deployer.deploy(CalculatorContract);
};
