import 'package:flutter/material.dart';

import 'pages/generate_code_page.dart';
import 'pages/scan_code_page.dart';
import 'pages/splash_screen_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QR App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        "/generate": (context) => const GenerateCodePage(),
        "/scan": (context) => const ScanCodePage(),
        "/splash": (context) => const SplashScreenPage(),
      },
      initialRoute: "/splash",
    );
  }
}
