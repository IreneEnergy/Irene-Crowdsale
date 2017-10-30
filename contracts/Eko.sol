pragma solidity ^0.4.4;

import "./token/MintableToken.sol";

contract Eko is MintableToken {
    string  public name = "EKO";
    string public symbol = "EKO";
    uint public decimals = 18;
    uint public INITIAL_SUPPLY = 40000000 * (10 ** decimals);

    function Eko() {
        totalSupply = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
    }
}
