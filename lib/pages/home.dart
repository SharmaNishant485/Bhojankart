import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false, // Disables all back navigation
      child: Scaffold(
        appBar: AppBar(title: const Text('Home Page')),
        body: const Center(child: Text('Welcome to BhojanKart!')),
      ),
    );
  }
}
