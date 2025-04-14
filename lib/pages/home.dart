import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true, // on back press exit the app
      child: Scaffold(
        appBar: AppBar(title: const Text('Home Page')),
        body: const Center(child: Text('Welcome to BhojanKart!')),
      ),
    );
  }
}
