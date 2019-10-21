import 'package:cc_uffs/app/navigator.dart';
import 'package:cc_uffs/app/pages/login/login_view.dart';
import 'package:cc_uffs/theme/color.theme.dart';
import 'package:flutter/material.dart';
import 'package:navigate/navigate.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp() {
    Navigate.registerRoutes(
      routes: route,
      defualtTransactionType: TransactionType.fromRight
    );
  }
  // Padrões de Cores da UFFS
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "CC UFFS",
      // Padrões de Cores da UFFS
      theme: ThemeData(
        primarySwatch: primaryColor,
        secondaryHeaderColor: secondColor,
      ),
      home: LoginView(),
    );
  }
}
