pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Talent is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Talent(address _owner)  UpgradeableToken(_owner) {
    name = "Talent";
    symbol = "TLT";
    totalSupply = 1000000000000000000000000000000000000000000000000000000000000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}