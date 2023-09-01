# Wallet Solidity Contract

This Solidity contract named Wallet represents a basic wallet on the Ethereum blockchain. It allows the owner to deposit and withdraw funds while ensuring proper error handling. This README provides an overview of the contract's functionality, how to use it, and other important information.

## Description

The Wallet contract includes the following features:

- **Constructor**: The constructor initializes the wallet with an initial balance and sets the wallet owner as the address that deploys the contract.

- **getAccountBalance()**: This function allows anyone to view the current account balance of the wallet.

- **depositFunds(uint256 _amount)**: Wallet owner can deposit funds into the wallet. The function checks that only the wallet owner can deposit funds and uses `assert` to verify that the balance is updated correctly.

- **withdrawFunds(uint256 _withdrawalAmount)**: Wallet owner can withdraw funds from the wallet. It checks if only the wallet owner can withdraw funds, and it uses the `revert` function with a custom error message `InsufficientFunds` to handle cases where the withdrawal amount exceeds the account balance. `assert` is also used to ensure the balance is updated correctly.

## Getting Started

To use this contract, follow these steps:

1. **Environment Setup**: Ensure you have access to a Solidity development environment like Remix or Truffle.

2. **Create a Solidity File**: Create a new Solidity file (e.g., Wallet.sol) and paste the contract code into it.

3. **Compile the Contract**: Use the Solidity compiler to compile the contract. Ensure that the compiler version is compatible with the contract code.

4. **Deploy the Contract**: Deploy the compiled contract to the Ethereum blockchain using a development environment or a testnet. You will need some ether for gas fees during deployment.

5. **Interact with the Contract**: After deployment, you can interact with the contract by calling its functions through a user interface or using Ethereum wallets.

## Functions

### `getAccountBalance()`

- **Input**: None
- **Behavior**: Returns the current account balance of the wallet.

### `depositFunds(uint256 _amount)`

- **Input**: An unsigned integer `_amount` representing the amount to deposit.
- **Behavior**: Allows the wallet owner to deposit funds into the wallet. The function ensures that only the wallet owner can deposit funds and uses `assert` to verify that the balance is updated correctly.

### `withdrawFunds(uint256 _withdrawalAmount)`

- **Input**: An unsigned integer `_withdrawalAmount` representing the amount to withdraw.
- **Behavior**: Allows the wallet owner to withdraw funds from the wallet. It checks if only the wallet owner can withdraw funds and uses the `revert` function with a custom error message `InsufficientFunds` to handle cases where the withdrawal amount exceeds the account balance. `assert` is also used to ensure the balance is updated correctly.

### Custom Error: `InsufficientFunds(uint256 balance, uint256 withdrawalAmount)`

- This custom error is used in the `withdrawFunds` function to handle cases where the withdrawal amount exceeds the account balance.

## License

This project is licensed under the MIT License. You can find the license details in the LICENSE.md file. 

