pragma solidity ^0.5.4;

import "./ERC20.sol";

/**
 *  ERC20Mintable
 */
contract ERC20Mintable is ERC20, MinterRole {
    function mint(address to, uint256 value) public returns (bool) {
        _mint(to, value);
        return true;
    }
}