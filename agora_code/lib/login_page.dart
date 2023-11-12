import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  const LoginPage ({Key? key}): super (key:key);

  @override
  State<LoginPage> createState()==> _LoginPageState()
}

class _LoginPageState extends State<LoginPage>{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:Column(children:[

      // Message
        Text('Welcome to Agora!', 
        style:TextStyle(
          fontWeight: FontWeight.bold, 
          fontSize:24,
          ),
        ),

        SizedBox(height: 10),
         Text('Welcome back', 
        style:TextStyle( 
          fontSize:24,
          ),
        ),
      // email field 

      // password textfield 

 // comment 
      // sign in button 

     ]),  
    );
  }
}