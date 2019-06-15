# Level 6 Force

Challenge URL = https://ethernaut.zeppelin.solutions/level/0x24d661beb31b85a7d775272d7841f80e662c283b

# Delegation Background Info 
Send ethers to the target address to make its balance greater than zero.  use the fallback function from another contract call. 

# problem
Some contracts will simply not take your money ¯\_(ツ)_/¯

The goal of this level is to make the balance of the contract greater than zero.
Things that might help:
-Fallback methods
-Sometimes the best way to attack a contract is with another contract.
-See the Help page above, section "Beyond the console"


# Solution
Force:  There is no direct way to change the owner.  Can use delegatecall in the fallback function.  Using delegatecall has been an attack vector on mutliple attacks.     

1.  Create new instance
2. Use Remix to create an attacking contract that will exploit the selfdestruct(address) from the attacking contract.  
3.  contract Selfdestruct{
  function Selfdestruct() payable{}
  function attack(){
    selfdestruct(0x..);
  }
}
4.  Submit.



