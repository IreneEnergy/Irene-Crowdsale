
const EkoSale = artifacts.require("./EkoSale.sol")


module.exports = function(deployer, network, accounts) {

  const startTime = web3.eth.getBlock(web3.eth.blockNumber).timestamp + 1 // one second in the future
  const endTime = startTime + (86400 * 42) // 42 days
  const rate = new web3.BigNumber(1)
  const wallet = accounts[0]
  const irene = accounts[1]
  const goal = new web3.BigNumber(web3.toWei(30, 'ether'))
  const cap = new web3.BigNumber(web3.toWei(80, 'ether'))

  deployer.deploy(EkoSale, startTime, endTime, rate, goal, cap, wallet, irene)

};
