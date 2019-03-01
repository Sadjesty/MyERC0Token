pragma solidity ^0.5.4;
/**
 * Pausable Token
 */
import "./Pausable.sol";

import "./ERC20.sol";

contract PausableToken is ERC20, Pausable {

  function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
    return transfer(_to, _value);
  }

  function transferFrom(address _from, address _to, uint256 _value) public whenNotPaused returns (bool) {
    return transferFrom(_from, _to, _value);
  }

  function approve(address _spender, uint256 _value) public whenNotPaused returns (bool) {
    return approve(_spender, _value);
  }

  function increaseApproval(address _spender, uint _addedValue) public whenNotPaused returns (bool success) {
    return increaseApproval(_spender, _addedValue);
  }

  function decreaseApproval(address _spender, uint _subtractedValue) public whenNotPaused returns (bool success) {
    return decreaseApproval(_spender, _subtractedValue);
  }
}