import { BankAccount, WithdrawalRequest, WithdrawalResult, WithdrawalError } from "./types.js";

function generateTransactionId(): string {
  return `txn_${Date.now()}_${Math.random().toString(36).substr(2, 9)}`;
}

export function createAccount(account: BankAccount): BankAccount | WithdrawalError {
  // Handle negative balance
  if (account.balance < 0) {
    return {
      code: "INVALID_AMOUNT",
      message: "Account balance cannot be negative",
    };
  }

  // Handle zero balance
  if (account.balance === 0) {
    return {
      code: "INVALID_AMOUNT",
      message: "Initial account balance must be positive",
    };
  }

  // Return valid account
  return account;
}

export function processWithdrawal(
  account: BankAccount,
  withdrawal: WithdrawalRequest
): WithdrawalResult | WithdrawalError {
  // Handle invalid account ID
  if (account.id !== withdrawal.accountId) {
    return {
      code: "ACCOUNT_NOT_FOUND",
      message: "Account not found",
    };
  }

  // Handle invalid amount (negative or zero)
  if (withdrawal.amount <= 0) {
    return {
      code: "INVALID_AMOUNT",
      message: "Withdrawal amount must be positive",
    };
  }

  // Handle currency mismatch
  if (account.currency !== withdrawal.currency) {
    return {
      code: "INVALID_AMOUNT",
      message: "Currency mismatch",
    };
  }

  // Handle insufficient funds
  if (account.balance < withdrawal.amount) {
    return {
      code: "INSUFFICIENT_FUNDS",
      message: "Insufficient funds for withdrawal",
    };
  }

  // Process successful withdrawal
  const remainingBalance = account.balance - withdrawal.amount;

  return {
    success: true,
    transaction: {
      id: generateTransactionId(),
      amount: withdrawal.amount,
      currency: withdrawal.currency,
      timestamp: withdrawal.timestamp,
      remainingBalance: remainingBalance,
    },
  };
}
