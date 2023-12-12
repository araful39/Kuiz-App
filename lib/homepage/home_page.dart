import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuiz/pagese/bangla/bangla_homepage.dart';
import 'package:kuiz/pagese/english/english_homepage.dart';
import 'package:kuiz/pagese/ict.dart';
import 'package:kuiz/pagese/math.dart';
import 'package:kuiz/pagese/physics.dart';
import 'package:kuiz/pagese/result.dart';


import '../pagese/biology.dart';
import '../pagese/chemistry.dart';
import 'custom_widget/homepage_widget.dart';
import 'list/all_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> widgetList=[
    Bangla(),English(),Ict(),Math(),Physics(),Chemistry(),Biology(),Result(),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Kuiz App"),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey,
      body: GridView.builder(
        itemCount: images.length,
        itemBuilder: (context,index){
          return InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>widgetList[index]));
          },
            child: homepage(subject[index], images[index], context),
          );
        },
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),

      ),
    );
  }
}
