pragma solidity ^0.4.18;

contract Token {

  mapping(address => uint) balances;  //balances is a data type of uint
  uint public totalSupply;

  function Token(uint _initialSupply) public {
    balances[msg.sender] = totalSupply = _initialSupply;
  }

  function transfer(address _to, uint _value) public returns (bool) {  //call contract.transfer(0x0, 21)
    require(balances[msg.sender] - _value >= 0);  //This will always return true!  
    balances[msg.sender] -= _value; //Underflow attack vector
    balances[_to] += _value; 
    return true;
  }

  function balanceOf(address _owner) public view returns (uint balance) {
    return balances[_owner];
  }
}