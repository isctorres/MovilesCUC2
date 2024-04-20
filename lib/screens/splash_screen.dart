import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:moviles_cuc_2024/screens/dashboard_screen.dart';
import 'package:moviles_cuc_2024/screens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logoWidth: 200,
      logo: Image.network(
          'https://img.gta5-mods.com/q75/images/grand-theft-auto-v-boot-logo/b06535-gtav_logo.png',),
      title: const Text(
        "Bienvenidos",
        style: TextStyle(
          fontSize: 35,
          color: Colors.orange,
          fontWeight: FontWeight.bold,
        ),
      ),
      gradientBackground: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color.fromARGB(255, 20, 10, 120),
          Colors.red,
        ],
      ),
      //backgroundColor: Colors.grey.shade400,
      showLoader: true,
      loadingText: const Text("Loading..."),
      navigator: const LoginScreen(),
      durationInSeconds: 2,
    );
  }
}