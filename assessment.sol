// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract MyToken {

    // Public variables
    string public tokenName = "IGRIS";
    string public tokenAbbrv = "IGR";
    uint public totalSupply;

    // Mapping to store balances
    mapping(address => uint) public balances;

    // Mint function to create new tokens
    function mint(address adr, uint val) public {
        totalSupply += val;
        balances[adr] += val;
    }

    // Burn function to destroy tokens
    function burn(address adr, uint val) public {
        if (balances[adr] >= val) {
            totalSupply -= val;
            balances[adr] -= val;
        }
    }
}
