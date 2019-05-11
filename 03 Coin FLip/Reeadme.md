# Level 3 Coin Flip

Challenge URL = https://ethernaut.zeppelin.solutions/level/0xd340de695bbc39e72df800dfde78a20d2ed94035

# Coin Flip Challenge Background Info 

This is a coin flipping game where you need to build up your winning streak by guessing the outcome of a coin flip. To complete this level you'll need to use your psychic abilities to guess the correct outcome 10 times in a row.

Generating random numbers in solidity can be tricky. There currently isn't a native way to generate them, and everything you use in smart contracts is publicly visible, including the local variables and state variables marked as private. Miners also have control over things like blockhashes, timestamps, and whether to include certain transactions - which allows them to bias these values in their favor.
Some options include using Bitcoin block headers (verified through BTC Relay), RANDAO, or Oraclize).


# problems
Known inputs with deterministic code create known outputs.  Entropy is VERY difficult!
Psuedo-randomness is used in Ethereum by hashing variables that are unique, difficult to tamper:
# input invariants
[transaction timestamp|sender address| block height]
n=2  //n(sides of coin) not really random...

The flip method gets the hash of the previous block, does integer division on it by a fixed factor and then uses the result as the side of the coin. The factor in hexadecimal is 0x8000000000000000000000000000000000000000000000000000000000000000. The probability that the hash of some random block is higher (or lower) than this number is 50%, so it makes sense to call it a "coin flip", where the coin is given by the previous block hash.

# Solution

1.  Create new instance
2.  You will need to use Remix to create a new contract(CoinFlipHack.sol)
3.  the hack contract will take the input of the instance created from OZ and create a layer the does the same logic
as contract CoinFlip and makes the approapriate prediction. 
4.  You must repeat the flip 10 times.  
5.  There is randomness involved.  increase the gas you pay for the transaction to insure it gets mined.  
6.  Submit the instance and check your work.


# Lessons Learned
1.  No such thing as RANDOM
2.  Use extreme caution when trying to calculate "Random" others can guess your random and hack your random.

