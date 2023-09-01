// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

//import "hardhat/console.sol";

contract Wallet {
    address public walletOwner;
    uint256 public accountBalance;

    event FundsDeposited(uint256 amount);
    event FundsWithdrawn(uint256 amount);

    constructor(uint256 initialBalance) payable {
        walletOwner = msg.sender;
        accountBalance = initialBalance;
    }

    function getAccountBalance() public view returns(uint256){
        return accountBalance;
    }

    function depositFunds(uint256 _amount) public payable {
        uint256 previousBalance = accountBalance;

        require(msg.sender == walletOwner, "Only the wallet owner can deposit funds");

        accountBalance += _amount;

        assert(accountBalance == previousBalance + _amount);

        emit FundsDeposited(_amount);
    }

    error InsufficientFunds(uint256 balance, uint256 withdrawalAmount);

    function withdrawFunds(uint256 _withdrawalAmount) public {
        require(msg.sender == walletOwner, "Only the wallet owner can withdraw funds");

        uint256 previousBalance = accountBalance;

        if (accountBalance < _withdrawalAmount) {
            revert InsufficientFunds({
                balance: accountBalance,
                withdrawalAmount: _withdrawalAmount
            });
        }

        accountBalance -= _withdrawalAmount;

        assert(accountBalance == (previousBalance - _withdrawalAmount));

        emit FundsWithdrawn(_withdrawalAmount);
    }
}
