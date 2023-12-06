

import 'package:agora/screens/home_screen.dart';
import 'package:agora/screens/registration_screen.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';


// stateful widget
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});


  @override
  State<LoginScreen> createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {
  // form key
  final _formKey = GlobalKey<FormState>();


  //edit controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  // firebase
  //final _auth = FirebaseAuth.instance;


  // login function
/* void signIn(String email, String password) async {
   if(_formKey.currentState!.validate())
   {
     await _auth
         .signInWithEmailAndPassword(email: email, password: password)
         .then((uid)=> {
       Fluttertoast.showToast(msg: "Login Successful"),
       Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=>HomeScreen())),
     }).catchError((e)
     {
       Fluttertoast.showToast(msg: e!.message);


     });
   }
 }*/




  @override
  Widget build(BuildContext context) {
    // -> email field
    final emailField = TextFormField(
        autofocus: false,
        controller: emailController,
        keyboardType: TextInputType.emailAddress,


        /*validator: (value)
       {
         if(value!.isEmpty){
           return("Please write your Berea username");
         }
         if (!RegExp(r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+\.[a-z]+$").hasMatch(value)) {
           return ("Please enter a valid email");
         }


         return null;
       },*/
        onSaved: (value){
          emailController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.account_circle),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Berea email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));


    // -> Password field
    final passwordField = TextFormField(
        autofocus: false,
        controller: passwordController,
        obscureText: true,
        /*validator: (value){
       RegExp regex = new RegExp(r'^.{6,}$');
       if (value!.isEmpty){
         return ("Password is required for login");
       }
       if(!regex.hasMatch(value)){
         return("Please Enter a Valid Password (6 characters min)");
       }
     },*/
        onSaved: (value){
          passwordController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.vpn_key),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));


    // -> Button
    final loginButton = SizedBox(
      width: 200, // Adjust the width as needed
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(30),
        color: Colors.black,
        child: MaterialButton(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          onPressed: () {
            //signIn(emailController.text, passwordController.text);
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context)=> const HomePage() ) // direct to HomeScreen
            );


          },
          child: const Text(
            "Login",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );




    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                        height: 250,
                        child: Image.asset("assets/agora_logo.png", fit:BoxFit.contain,) // adding logo on login page
                    ),


                    //
                    const SizedBox(height: 45),
                    emailField,
                    const SizedBox(height: 15),
                    passwordField,
                    const SizedBox(height: 35),
                    loginButton,
                    const SizedBox(height: 15),
                    Row(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: <Widget>[
                          const Text("Don't have an account? "),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder:(context)=> const RegistrationScreen()));
                            },
                            child: const Text("SignUp",
                              style:TextStyle(fontWeight:FontWeight.w600,
                                  fontSize:15,
                                  decoration: TextDecoration.underline,
                                  fontStyle: FontStyle.italic),),
                          )
                        ]
                    )
                  ],


                ),


              ),
            ),


          ),
        ),
      ),
    );
  }
}





