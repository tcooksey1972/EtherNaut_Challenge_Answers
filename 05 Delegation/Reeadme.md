# Level 4 Token

Challenge URL = https://ethernaut.zeppelin.solutions/level/0x6545df87f57d21cb096a0bfcc53a70464d062512

# Token Challenge Background Info 


# problem
The goal of this level is for you to hack the basic token contract.
You are given 20 tokens to start with and you will beat the level if you somehow manage to get your hands on any additional tokens. Preferably a very large amount of tokens.

Things that might help:
-What is an odometer?


# Solution
Interger overflow in the trasnfer function.  

1.  Create new instance
2.  Call the function  balanceOf("your metamask address");
3.  You should see a balance of 20;
4.  UINT is suseptable to an underflow or overflow attack.  
5.  call the contract.transfer(0x0, 21);  //cause overflow
6.  Call the function balanceOf("your metamask address");
7.  Submit





