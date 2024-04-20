import 'package:flutter/material.dart';
import 'package:moviles_cuc_2024/screens/dashboard_screen.dart';
import 'package:moviles_cuc_2024/screens/implicitas_screen.dart';
import 'package:moviles_cuc_2024/screens/splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: const SplashScreen(),
      routes: {
        '/dash' : (context) => const DashboardScreen(),
        '/int' :(context) => ImplicitasScreen()
      },
    );
  }
}