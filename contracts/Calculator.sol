// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

contract Calculator {

  function add(int x,int y) public pure returns(int) {
    assembly{
      let r := add(x,y)
      mstore(0x0,r)
      return(0x0,32)
    }
  }

  function minus(int x,int y) public pure returns(int) {
    assembly{
      let r := sub(x,y)
      mstore(0x0,r)
      return(0x0,32)
    }
  }

  function multiply(int x,int y) public pure returns(int) {
    assembly{
      let r := mul(x,y)
      mstore(0x0,r)
      return(0x0,32)
    }
  }

  function divide(int x,int y) public pure returns(int) {
    assembly{
      if eq(y,0) {
        revert(0,0)
      }
      let r := div(x,y)
      mstore(0x0,r)
      return(0x0,32)
    }
  }


}
