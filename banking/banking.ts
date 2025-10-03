import type { BankAccount, WithdrawalRequest, WithdrawalResult, WithdrawalError } from "./types";

export function createAccount(account: BankAccount): BankAccount | WithdrawalError {
  if (account.balance <= 0) {
    if (account.balance < 0) {
      return {
        code: "INVALID_AMOUNT",
        message: "💸 Account balance cannot be negative",
      };
    } else {
      return {
        code: "INVALID_AMOUNT",
        message: "💰 Initial account balance must be positive",
      };
    }
  }

  return account;
}

export function processWithdrawal(
  account: BankAccount,
  withdrawal: WithdrawalRequest
): WithdrawalResult | WithdrawalError {
  // Check if account ID matches
  if (withdrawal.accountId !== account.id) {
    return {
      code: "ACCOUNT_NOT_FOUND",
      message: "🔍 Account not found",
    };
  }

  // Check if amount is positive
  if (withdrawal.amount <= 0) {
    return {
      code: "INVALID_AMOUNT",
      message: "❌ Withdrawal amount must be positive",
    };
  }

  // Check if currency matches
  if (withdrawal.currency !== account.currency) {
    return {
      code: "INVALID_AMOUNT",
      message: "💱 Currency mismatch - cannot process withdrawal",
    };
  }

  // Check if sufficient funds
  if (withdrawal.amount > account.balance) {
    return {
      code: "INSUFFICIENT_FUNDS",
      message: "🚫 Insufficient funds for withdrawal",
    };
  }

  // Process successful withdrawal
  const remainingBalance = account.balance - withdrawal.amount;
  const transactionId = crypto.randomUUID();

  return {
    success: true,
    message: "✅ Withdrawal processed successfully",
    transaction: {
      id: transactionId,
      amount: withdrawal.amount,
      currency: withdrawal.currency,
      timestamp: withdrawal.timestamp,
      remainingBalance,
    },
  };
}
