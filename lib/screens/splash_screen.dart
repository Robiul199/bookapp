import 'package:bookapp/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:
             AssetImage("assets/white.png"),
             fit: BoxFit.cover,
            ),
        ),
       child: SizedBox.expand(
         child: Stack(
          children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/bilding2.png"),
              Text("Choose the best resting place for you",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              ), 
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/4.8),
                  child: Text("find a resting place quickly using the MyRoom application that will help yoy to find the right resting place.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  height: 1.5
              ),
              ),
                ),
            ],
          ),
Align(
  alignment: Alignment.bottomCenter,
  child: Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      ElevatedButton(
        onPressed: (){
          Navigator.push(context,
           MaterialPageRoute(builder: (context) => HomePage()
           ));
        },
         child: Text('Start On Application',),
         style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          )
         
         ),
         ),
    ],
  ),
  ),
)
         ],
         ),
       ),
        
      ),
    );
  }
}

class LoginPage {
}