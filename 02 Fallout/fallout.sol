pragma solidity ^0.4.18;

import 'zeppelin-solidity/contracts/ownership/Ownable.sol';

contract Fallout is Ownable {

  mapping (address => uint) allocations;

  /* constructor */
  function Fal1out() public payable { //The Fallout constructor function is mispelled causing an epty constructor to be called  
    owner = msg.sender;                //We need to become the owner of this contract by calling this function
    allocations[owner] = msg.value;     //Once we are the owner of this contract nothing else needs to be done to complete this challenge.
  }

  function allocate() public payable {
    allocations[msg.sender] += msg.value;
  }

  function sendAllocation(address allocator) public {
    require(allocations[allocator] > 0);
    allocator.transfer(allocations[allocator]);
  }

  function collectAllocations() public onlyOwner {
    msg.sender.transfer(this.balance);
  }

  function allocatorBalance(address allocator) public view returns (uint) {
    return allocations[allocator];
  }
}