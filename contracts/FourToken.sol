pragma solidity ^0.4.17;

import './token/CappedToken.sol';
import './token/SignedTransferToken.sol';


contract FourToken is CappedToken, SignedTransferToken {
  string public name = 'The 4th Pillar Token';
  string public symbol = 'FOUR';
  uint256 public decimals = 18;

  // Max supply of 400 million
  uint256 public maxSupply = 400000000 * 10**decimals;

  function FourToken()
    CappedToken(maxSupply) public {
  }

}
