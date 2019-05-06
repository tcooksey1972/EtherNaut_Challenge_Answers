# Level 2 Fallout

Challenge URL =

# Fallout Challenge Background Info 
Rubixi changed its name from "Dynamic Pyramid" but didnt rename the constructor method of its contract. 

contract Rubixi {
  address private owner;
  function DynamicPyramid() { owner = msg.sender; }
  function collectAllFees() { owner.transfer(this.balance) }
  ...

Allowing an attacker to call the old constructor and claim ownership & drain.
 



# problem
The "Fallout" constructor is spelled incorrectly as Fal1out. 
Results in an empty constructor being called when the contract is deployed with no creator set


# Solution

1.  Create new instance
2.  Call the function  fal1out() public payable and become the new contract owner:
contract.fallout()

2.  Submit the instance and check your work.




