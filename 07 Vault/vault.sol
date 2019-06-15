pragma solidity ^0.4.18;

contract Vault {
  bool public locked;
  bytes32 private password; //password is a storage variable with private access
                            //private means only this contract, only internally
  function Vault(bytes32 _password) public {
    locked = true;
    password = _password;
  }

  function unlock(bytes32 _password) public {
    if (password == _password) {
      locked = false;
    }
  }
}