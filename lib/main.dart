import 'package:flutter/material.dart';
// import 'package:warren_starter/screens/envelopes_screen.dart';
// import 'package:warren_starter/screens/transactions_screen.dart';
import '/screens/envelopes_screen.dart';
import '/screens/transactions_screen.dart';
import 'screens/home_screen.dart';
import 'screens/home_screen_accounts.dart';
import 'screens/investment_screen.dart';
import 'screens/salary_screen.dart';
import 'screens/investment_period_screen.dart';
import 'screens/credit_screen.dart';

void main() => runApp(const FigmaToCodeApp());

class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      // Set home screen as the initial route
      home: HomeScreen(),
      // Define named routes for navigation
      routes: {
        '/home': (context) => HomeScreen(),
        '/accounts': (context) => AccountsScreen(),
        '/investment': (context) => InvestmentScreen(),
        '/salary': (context) => SalaryScreen(),
        '/investment-period': (context) => InvestmentPeriodScreen(),
        '/credit': (context) => CreditScreen(),
        '/transactions': (context) => TransactionsScreen(),
        '/envelopes': (context) => EnvelopesScreen(),
      },
    );
  }
}