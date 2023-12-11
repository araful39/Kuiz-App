import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Biology extends StatefulWidget {
  const Biology({super.key});

  @override
  State<Biology> createState() => _BiologyState();
}

class _BiologyState extends State<Biology> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Biology",style: TextStyle(color: Colors.indigoAccent,fontSize: 50),),),
    );
  }
}
