

import 'package:flutter/material.dart';
import 'package:login_page/Banking.dart';
import 'package:login_page/Dashboard.dart';
import 'package:login_page/ForgetPassword.dart';
import 'package:login_page/Listing.dart';
import 'package:login_page/Login.dart';
import 'package:login_page/Menu.dart';
import 'package:login_page/Navbar.dart';
import 'package:login_page/Profile.dart';
import 'package:login_page/Registration.dart';
import 'package:login_page/ResetPassword.dart';
import 'package:login_page/Transaction.dart';
import 'package:login_page/analysisEarning.dart';
import 'package:login_page/analysisExpenses.dart';
import 'package:login_page/analysisInvestment.dart';
import 'package:login_page/analysisLoans.dart';
import 'package:login_page/bCashBalance.dart';
import 'package:login_page/bPendingLoans.dart';
import 'package:login_page/balancesEarnings.dart';
import 'package:login_page/balancesInvestments.dart';
import 'package:path/path.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'Login',
    routes: {

      'Login' : (context) => Login(),
      'Registration' : (context) => Registration(),
      'ForgotPassword' : (context) => ForgetPassword(),
      'ResetPassword' : (context) => ResetPassword(),
      'Menu'  : (context) => Menu(),
      'NavBar' : (context) => NavBar(),
      'Dashboard' : (context) => Dashboard(),
      'Listing' : (context) => Listing(),
      'Banking' : (context) => Banking(),
      'Transaction' : (context) => Transaction(),
      'AnalysisExpanses' : (context) => AnalysisExpanses(),
      'AnalysisEarning' : (context) => AnalysisEarning(),
      'AnalysisLoans' : (context) => AnalysisLoans(),
      'AnalysisInvestment' : (context) => AnalysisInvestment(),
      'BCashBalance' : (context) => BCashBalance(),
      'BalancesInvestments' : (context) => BalancesInvestments(),
      'BPendingLoans' : (context) => BPendingLoans(),
      'BalancesEarnings': (context) => BalancesEarnings(),
      'Profile' : (context) => Profile(),
    },

  ));
}

