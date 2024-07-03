
# Degen Gaming Token (DGN)

The Degen Gaming Token (DGN) is an ERC-20 standard token deployed on the Avalanche network for use within the Degen Gaming platform. Degen Gaming allows players to participate in various in-game activities, earn rewards, and redeem tokens for exclusive items in the in-game store.
## Description

Degen Gaming Token offers the following functionalities:



- `mint()` allows the contract owner to mint new DGN tokens and distribute them to the specified address.

- `transfer()` enables players to transfer DGN tokens to other addresses.

- `store()` provides players with a list of options available in the in-game store, along with their respective prices in DGN tokens.

- `redeem()` to exchange their DGN tokens for items available in the in-game store. The function deducts the specified amount of tokens from the player's balance and transfers them to the contract owner.

- `balance()` allows players to check the balance of DGN tokens held in their account.

- `burn()` allows players to burn their DGN tokens if they no longer need them.
## Getting Started

#### Prerequisites
- A development environment with Solidity compiler (version 0.8.18 or compatible).
- A development environment for Avalanche.
- MetaMask wallet installed in your web browser, connected to the Avalanche testnet (Fuji C-Chain) and test AVAX tokens in your wallet.

Once you have the prerequisites ready, follow these steps to deploy and interact with the contract:

1. Compile the Contract: Use the Solidity compiler to compile the smart contract code to generate the contract's bytecode and ABI (Application Binary Interface).

2. Configure the Environment: Set up your Avalanche development environment and configure your deployment account with AVAX tokens to cover the deployment cost.

3. Deploy the Contract: Deploy the DGN contract on the Avalanche network using your development environment. Ensure that you record the deployed contract address for future interactions.

4. Interact with the Contract: Use MetaMask to interact with the deployed DGN contract. As the owner, you can mint new tokens, and players can transfer, redeem, and burn tokens based on the contract functionalities.

###### **Note**
For testing purposes on the Avalanche Fuji C-Chain testnet, you can get test DGN tokens from testnet faucets that offer test tokens. Also, note that test tokens have no real-world value and are solely for testing.
## Authors
Anushka Singh
