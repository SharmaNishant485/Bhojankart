import 'dart:async';
import 'package:bhojankart/pages/login.dart';
import 'package:shared_preferences/shared_preferences.dart';


// import '../pages/home.dart';
import 'package:flutter/material.dart';

// void main(){
//   runApp(MaterialApp(
//     home: SplashScreen()
//   ));
// }
class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreen();
}

  class _SplashScreen extends State<SplashScreen>{

    Future<void> checkLoginStatus() async {
    final prefs = await SharedPreferences.getInstance();
    final isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

    await Future.delayed(const Duration(seconds: 2));

    if (isLoggedIn) {
      Navigator.pushReplacementNamed(context, 'pages/bottom_navbar');
    } else {
      Navigator.pushReplacementNamed(context, 'pages/login');
    }
  }


  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> loginScreen()));
    });
  }

  Widget build(BuildContext context) {
   return Scaffold(
    body:Container(
      width: double.infinity,
      height:double.infinity,
      color:Color(0xFFE4A939),
      child:Image.asset('lib/images/splash1.PNG'),
        
      
    )
   );
  }
  
  
}