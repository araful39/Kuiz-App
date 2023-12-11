import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Physics extends StatefulWidget {
  const Physics({super.key});

  @override
  State<Physics> createState() => _PhysicsState();
}

class _PhysicsState extends State<Physics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Physics",style: TextStyle(color: Colors.indigoAccent,fontSize: 50),),),
    );
  }
}
