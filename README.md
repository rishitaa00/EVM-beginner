# Creating a Token

## Description

This smart contract, written in Solidity, demonstrates the mechanisms of minting, burning, and managing the total supply of tokens. Solidity is a programming language specifically designed for developing smart contracts on the Ethereum blockchain. The contract includes four public state variables and two functions (mint and burn) to manage the token supply.

### State Variables
- tokenName: A string representing the name of the token.
- tokenAbbrv: A string representing the abbreviation of the token.
- totalSupply: An unsigned integer representing the total supply of the token.
- balances: A mapping that stores the balance of each address.

### Functions
- mint: This function takes two parameters - an address and a value (val). It adds the value to both the total supply and the balance of the specified address.
- burn: This function also takes two parameters - an address and a value (val). It includes a conditional statement to ensure the address has enough tokens to burn. If the condition is met, it deducts the value from both the total supply and the balance of the specified address.

## Getting Started

### Executing the Program

To run this program, you can use Remix, an online Solidity IDE. Follow these steps:

1. Go to the Remix website at [Remix IDE](https://remix.ethereum.org/).
2. Create a new file by clicking on the "+" icon in the left-hand sidebar.
3. Save the file with a .sol extension and name it Assessment.sol.
4. Copy and paste the following code into the file.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract MyToken {
    // State variables
    string public tokenName = "IGRIS";
    string public tokenAbbrv = "IGR";
    uint public totalSupply;

    //Mapping to store balances
    mapping(address => uint) public balances;

    // Mint Function to create new tokens
    function mint(address adr, uint val) public {
        totalSupply += val;
        balances[adr] += val;
    }

    // Burn Function to destroy tokens
    function burn(address adr, uint val) public {
        if(balances[adr] >= val){
            totalSupply -= val;
            balances[adr] -= val;
        }
    }
}
```

### Deploying and Interacting with the Contract

1. *Compile the Contract*:
   - In the Remix IDE, navigate to the "Solidity Compiler" tab in the left-hand sidebar.
   - Click the "Compile Assessment.sol" button.

2. *Deploy the Contract*:
   - Navigate to the "Deploy & Run Transactions" tab.
   - Select "MyToken" from the contract dropdown menu.
   - Click the "Deploy" button.
  
##

3. *Interact with the Contract*:
   - After deployment, you can interact with the contract using the provided UI in Remix.
   - Use the mint function to mint new tokens by providing an address and the number of tokens.
   - Use the burn function to burn tokens from an address by providing the address and the number of tokens to be burned.
   - View the totalSupply and balances to check the total supply of tokens and the balance of any address.


4. *Author*:
   - Rishita Sharma 
   - @rishitaa00      


## License

This project is licensed under the MIT License - see the LICENSE.md file for details.**

