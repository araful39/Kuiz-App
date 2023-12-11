import 'dart:async';

import 'package:flutter/material.dart';

import '../homepage/home_page.dart';

class SplashSceen extends StatefulWidget {
  const SplashSceen({super.key});

  @override
  State<SplashSceen> createState() => _SplashSceenState();
}

class _SplashSceenState extends State<SplashSceen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () =>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage())));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Kuiz App",style: TextStyle(color: Colors.indigoAccent,fontSize: 50,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
