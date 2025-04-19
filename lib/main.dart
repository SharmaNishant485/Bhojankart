import 'package:flutter/material.dart';
import '../pages/splash.dart';
import '../pages/login.dart';
import '../pages/home.dart';
import '../pages/otp_screen.dart';
import 'components/bottom_navbar.dart';


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
        "/pages/otp_screen": (context)=>OtpScreen(),
        "/pages/bottom_navbar": (context) => CustomBottomBar(),
        // "pages/team": (context)=>TeamPage(),
      },
    );
  }
}


//  create a dart pages named home.dart with class name 'MyHomePage()'