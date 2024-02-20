import 'package:flutter/material.dart';

import 'package:cashmate/data_manager.dart';
import 'package:cashmate/widgets/Overview/overview_expense_card.dart';

class OverviewExpensesList extends StatelessWidget {
  OverviewExpensesList({super.key, required this.expensesData});

  final List<Map<String, dynamic>> expensesData;
  final DataManager dataManager = DataManager();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expensesData.length,
      itemBuilder: (context, index) =>
          OverviewExpenseCard(expensesData: expensesData[index]),
    );
  }
}
