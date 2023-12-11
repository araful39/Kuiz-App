import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuiz/api/total_api.dart';
import 'package:kuiz/pagese/bangla/widget_bangla.dart';
import 'package:kuiz/model/model.dart';

class Bangla extends StatefulWidget {
  const Bangla({super.key});

  @override
  State<Bangla> createState() => _BanglaState();
}

class _BanglaState extends State<Bangla> {
  int isClick=0;
  Apiclass _apiclass = Apiclass();
@override
  void initState() {
   setState(() {
     isClick++;
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    print("----${isClick}----");
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(isClick.toString())
          ],
        )
      ),

      body:isClick==4?Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
         custombangla(
              _apiclass.apifunction().bangla![0].question.toString(),
              _apiclass.apifunction().bangla![0].s1.toString(),
              _apiclass.apifunction().bangla![0].s2.toString(),
              _apiclass.apifunction().bangla![0].s3.toString(),
              _apiclass.apifunction().bangla![0].s4.toString(),
              context),

        ],
      ):isClick==8?Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          custombangla(
              _apiclass.apifunction().bangla![1].question.toString(),
              _apiclass.apifunction().bangla![1].s1.toString(),
              _apiclass.apifunction().bangla![1].s2.toString(),
              _apiclass.apifunction().bangla![1].s3.toString(),
              _apiclass.apifunction().bangla![1].s4.toString(),
              context),
        ],
      ):Text("click")
    );
  }
}
