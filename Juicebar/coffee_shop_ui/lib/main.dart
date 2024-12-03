import 'package:coffee_shop_ui/models/coffee.dart';
import 'package:coffee_shop_ui/pages/dashboard_page.dart';
import 'package:coffee_shop_ui/pages/detail_page.dart';
import 'package:coffee_shop_ui/pages/login_page.dart';
import 'package:coffee_shop_ui/pages/onboard_page.dart';
import 'package:coffee_shop_ui/pages/payment_page.dart';
import 'package:coffee_shop_ui/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffF9F9F9),
        textTheme: GoogleFonts.soraTextTheme(),
      ),
      home: const OnboardPage(),
      routes: {
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/dashboard': (context) => const DashboardPage(),
        '/pay': (context) => const PaymentPage(),
        '/detail': (context) {
          Coffee coffee = ModalRoute.of(context)!.settings.arguments as Coffee;
          return DetailPage(coffee: coffee);
        },
      },
    );
  }
}
