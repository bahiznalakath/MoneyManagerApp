import 'package:flutter/material.dart';

enum TransactionType { outflow, inflow }

enum ItemCategoryType { fashion, grocery, payments }

class UserInfo {
  final String name;
  final String totalBalance;
  final String inflow;
  final String outflow;
  final List<Transaction> transactions;

  const UserInfo(
      {required this.name,
      required this.totalBalance,
      required this.inflow,
      required this.outflow,
      required this.transactions});
}

class Transaction {
  final ItemCategoryType categoryType;
  final TransactionType transactionType;
  final String itemCategoryName;
  final String itemname;
  final String amount;
  final String data;

  const Transaction(
    this.categoryType,
    this.transactionType,
    this.itemCategoryName,
    this.itemname,
    this.amount,
    this.data,
  );
}

const List<Transaction> transactions1 = [
  Transaction(ItemCategoryType.fashion, TransactionType.outflow, "Shoes",
      "puma sneaker", "3000", "18-08-2023"),
  Transaction(ItemCategoryType.fashion, TransactionType.outflow, "Bag",
      "Gucci Flex", "3500", "20-08-2023"),
];

const List<Transaction> transactions2 = [
  Transaction(ItemCategoryType.payments, TransactionType.inflow, "Payment",
      "Transfer from Eden", "13000", "18-08-2023"),
  Transaction(ItemCategoryType.grocery, TransactionType.outflow, "Food",
      "Chicken Wing", "500", "2-08-2023"),
];
const userdata = UserInfo(
    name: "jack",
    totalBalance: "300ts",
    inflow: "\$123",
    outflow: "200",
    transactions: transactions1);
