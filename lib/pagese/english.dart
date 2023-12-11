import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuiz/list/all_list.dart';

class English extends StatefulWidget {
  const English({super.key});

  @override
  State<English> createState() => _EnglishState();
}

class _EnglishState extends State<English> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(subject[1],style: TextStyle(color: Colors.indigoAccent,fontSize: 50),),),
    );
  }
}
