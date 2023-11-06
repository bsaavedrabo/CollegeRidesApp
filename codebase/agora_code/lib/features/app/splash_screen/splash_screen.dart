import 'package:flutter/material.dart';
//import 'codebase/agora_code/lib/features/user_auth/presentation/pages/login_page.dart'

class SplashScreen extends StatefulWidget {
  final Widget? child;
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // delay the screen for  3 seconds:
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), (){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context) => widget.child!), (route) => false)
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Welcome to Agora",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
