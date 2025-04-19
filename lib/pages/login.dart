import 'package:flutter/material.dart';
import '../pages/otp_screen.dart';
// void main() {
//   runApp(loginScreen());
// }

class loginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Body(context)
      );
    
  }
}

Widget Body(BuildContext context) {
  return Column(
    children: [
      Expanded(
          flex: 5,
          child: 
            
              Container(
             
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('lib/images/food_img.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              
            
          ),
          SizedBox(height: 20,),
      Expanded(
          flex: 6,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text('Hunger Stops Here - Order with Bhojankart!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      
                        prefixIcon: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        '+91',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    hintText: 'Enter Phone Number',
                    
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      minimumSize: Size(double.infinity,50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, '/pages/otp_screen');
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> OtpScreen()));
                      },
                       child: Text('Continue',style: TextStyle(color: Colors.white,fontSize: 18),
                    ),
                    ),
                    
                    SizedBox(height: 10,),
                    Text('By continuing, you agree to our terms of service, Privacy Policy, and Content Policy.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12,color: Colors.grey),
                    )

                ],
              )))
    ],
  );
}
