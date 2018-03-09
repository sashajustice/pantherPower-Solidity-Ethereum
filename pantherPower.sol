pragma solidity ^0.4.12;
import './IERC20.sol';

contract PantherPower is IERC20 {
  uint public constant _totalSupply = 1000000;

  string public constant symbol = "Power";
  string public constant name = "PantherPower";
  uint public constant decimals = 3;
}
