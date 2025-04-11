import 'package:flutter/material.dart';
import '../pages/splash.dart';
import '../pages/login.dart';
import '../pages/home.dart';
import '../pages/otp_screen.dart';


void main(){
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
        "/pages/login": (context)=>loginScreen(),
        "/pages/otp": (context)=>OtpScreen(),
        "/pages/home": (context) => MyHomePage(),
        // "pages/team": (context)=>TeamPage(),
      },
    );
  }
}


//  create a dart pages named home.dart with class name 'MyHomePage()'