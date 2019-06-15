# Level 5 Delegation

Challenge URL = https://ethernaut.zeppelin.solutions/level/0x68756ad5e1039e4f3b895cfaa16a3a79a5a73c59

# Delegation Background Info 
Dellegatecall is risky and full of attack vectors.
Your contract is saying "here, other contracts or other libraries, do whatever you want with my state".  The delegatecall function is a powerful featrue but a dangerous one.  Must be used with care and good engineering standards.  
The Parity wallet hack would be a great example of this happening  https://blog.zeppelin.solutions/on-the-parity-wallet-multisig-hack-405a8c12e8f7

# problem
The goal of this level is for you claim ownership of the instance you are given.
Things that might help
-Look into Solidity's documentation on the delegatecall low level function, how it works, how it can be used to delegate operations to on-chain libraries, and what implications it has on execution scope.
-Fallback methods
-Method ids


# Solution
Delegation:  There is no direct way to change the owner.  Can use delegatecall in the fallback function.  Using delegatecall has been an attack vector on mutliple attacks.     

1.  Create new instance
2.  Use the fallout function to delegate call to pwn(), which sets t he msg.sender(attackers wallet address) to owner.
     web3.sha3(pwn()");
3. await contract.sendTransaction({data:"0xdd365b8b"});
4.  Submit






