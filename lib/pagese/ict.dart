import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ict extends StatefulWidget {
  const Ict({super.key});

  Ict.fromJson(v);

  @override
  State<Ict> createState() => _IctState();

  toJson() {}
}

class _IctState extends State<Ict> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Ict",style: TextStyle(color: Colors.indigoAccent,fontSize: 50),),),
    );
  }
}
