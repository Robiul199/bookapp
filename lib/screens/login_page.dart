import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
   
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/blue.png"),
            ),
            ),
            child: SizedBox.expand(
              child: Column(
                children: [
                 Padding(
                   padding: const EdgeInsets.only(top: 80, bottom: 30),
                   child: Column(children: [
                     Text("Log In",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
                color: Colors.white
                ),
              ), 
               Text("Access Acakaunt",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.grey[400]
                ),
              ),
                   ],),
                 ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                    Text("Log in with one of the follow options.",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 12,
                      color: Colors.blue[800]
                    ),
                    ),
                       Padding(
                         padding: const EdgeInsets.only(top: 20),
                         child: Row(
                children: [
                  Expanded(
                     child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: ElevatedButton(
                         style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
         
         ),
                      onPressed: () { },
                    child: Text("Google"),
                    ),
                  ),
                  ),Expanded(
                     child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: ElevatedButton(
            style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
         
         ),
                     
                      onPressed: () { },
                    child: Text("Facebook"),
                    ),
                  ),
                  ),
                ],
              ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 20),
                   child: Text("Email",
                   style: TextStyle(fontWeight: FontWeight.bold,
                   color: Colors.blue[800],
                   fontSize: 12
                   ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 10),
                   child: CupertinoTextField(
                    prefix: Icon(Icons.person,
                    color: Colors.grey,
                    ),
                    placeholder: 'Your email......',
                    padding: EdgeInsets.all(10),
                   ),
                 ),   Padding(
                   padding: const EdgeInsets.only(top: 20),
                   child: Text("password",
                   style: TextStyle(fontWeight: FontWeight.bold,
                   color: Colors.blue[800],
                   fontSize: 12
                   ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 10),
                   child: CupertinoTextField(
                    prefix: Icon(Icons.lock,
                    color: Colors.grey,
                    ),
                    placeholder: '***************',
                    padding: EdgeInsets.all(10),
                   ),
                 ), Padding(
                   padding: const EdgeInsets.only(top: 50),
                   child: ElevatedButton(
        onPressed: (){
          Navigator.push(context,
           MaterialPageRoute(builder: (context) => HomePage()
           ));
        },
         child: Text('Log In',
         style: TextStyle(fontSize: 20,
         fontWeight: FontWeight.bold
         ),
         ),
         style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
         
         ),
         ),
                 ),
                  ],
                  ),
                ),
              ),
           
              ],
              ),
            ),
      ),
    );
  }
}