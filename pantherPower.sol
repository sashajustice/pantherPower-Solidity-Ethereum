pragma solidity ^0.4.12;
import './IERC20.sol';

contract PantherPower is IERC20 {
  uint public constant _totalSupply = 1000000;

  string public constant symbol = "Power";
  string public constant name = "PantherPower";
  uint public constant decimals = 3;

mapping(address => uint256) balances;
mapping(address => mapping(address => uint256)) allowed;

function PantherPower() {
balances[msg.sender] = _totalSupply;
}

function totalSupply() constant returns (uint totalSupply) {
return _totalSupply;>>>>
}

function balanceOf(address _owner) constant returns (uint256 balance) {
return balances[_owner];
}

function transfer(address _to, uint256 _value) returns (bool success) {
require(
    balances[msg.sender] >= _value
    && _value > 0
);
balances[msg.sender] -= _value;
balances[_to] += _value;
Transfer(msg.sender, _to, _value);
return true;
}

}
