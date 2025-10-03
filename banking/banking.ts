import { BankAccount, WithdrawalRequest, WithdrawalResult, WithdrawalError } from "./types";

function generateTransactionId(): string {
  return `txn_${Date.now()}_${Math.random().toString(36).substr(2, 9)}`;
}

export function createAccount(account: BankAccount) {}

export function processWithdrawal(
  account: BankAccount,
  withdrawal: WithdrawalRequest
): WithdrawalResult | WithdrawalError {
  // TODO(human): Implement withdrawal processing logic with validation
}
