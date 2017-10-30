pragma solidity ^0.4.4;

import "./crowdsale/CappedCrowdsale.sol";
import "./crowdsale/RefundableCrowdsale.sol";
import "./Eko.sol";

contract EkoSale is CappedCrowdsale, RefundableCrowdsale {

  function EkoSale(uint256 _startTime, uint256 _endTime, uint256 _rate, uint256 _goal, uint256 _cap, address _wallet, address _irene)
    CappedCrowdsale(_cap)
    FinalizableCrowdsale()
    RefundableCrowdsale(_goal)
    Crowdsale(_startTime, _endTime, _rate, _wallet, _irene) 
    {
      require(_goal <= _cap);
    }


   
  function createTokenContract() internal returns (MintableToken) {
    return new Eko();
  }

}