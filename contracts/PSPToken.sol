pragma solidity ^0.4.18;

import "zeppelin-solidity/contracts/token/ERC20/MintableToken.sol";
import "zeppelin-solidity/contracts/token/ERC20/PausableToken.sol";
import "zeppelin-solidity/contracts/token/ERC20/TokenTimelock.sol";
import "zeppelin-solidity/contracts/math/SafeMath.sol";


contract PSPToken is PausableToken, MintableToken {
  using SafeMath for uint256;

  string public name = "PSPToken";
  string public symbol = "PSP";
  uint public decimals = 18;

  /**
   * @dev mint timelocked tokens
   */
  function mintTimelocked(address _to, uint256 _amount, uint256 _releaseTime)
  onlyOwner canMint returns (TokenTimelock) {

    TokenTimelock timelock = new TokenTimelock(this, _to, _releaseTime);
    mint(timelock, _amount);

    return timelock;
  }

}
