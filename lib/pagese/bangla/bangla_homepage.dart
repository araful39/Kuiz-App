

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuiz/api/total_api.dart';
import 'package:kuiz/pagese/bangla/widget_bangla.dart';


class Bangla extends StatefulWidget {
  const Bangla({super.key});

  @override
  State<Bangla> createState() => _BanglaState();
}

class _BanglaState extends State<Bangla> {
  int isClick=30;

@override
  void initState() {
  setTimer();
    super.initState();
  }
void setTimer()async{
  Future.delayed(Duration(seconds: 1)).then((value)  {

    setState(() {
      if(isClick>=1){
        setTimer();
        isClick--;

      }
      else{

    print(" end ");

      }
    });

  });
}
  Apiclass _apiclass = Apiclass();




  @override
  Widget build(BuildContext context) {
    print(_apiclass.apifunction().runtimeType);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              maxRadius: 50,
                backgroundColor: Colors.green,
                child: Text(isClick.toString(),style: TextStyle(color: Colors.white,fontSize: 30),)),
          ],
        )
      ),

      body:isClick>=27?Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
              backgroundColor: Colors.green,
              child: Text("1",style: TextStyle(color: Colors.white,fontSize: 30),)),
         custombangla(
              _apiclass.apifunction().bangla![0].question.toString(),
              _apiclass.apifunction().bangla![0].s1.toString(),
              _apiclass.apifunction().bangla![0].s2.toString(),
              _apiclass.apifunction().bangla![0].s3.toString(),
              _apiclass.apifunction().bangla![0].s4.toString(),
              context,
         Colors.indigo
         ),

        ],
      ): isClick>=24?Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
              backgroundColor: Colors.green,
              child: Text("2",style: TextStyle(color: Colors.white,fontSize: 30),)),
          custombangla(
              _apiclass.apifunction().bangla![1].question.toString(),
              _apiclass.apifunction().bangla![1].s1.toString(),
              _apiclass.apifunction().bangla![1].s2.toString(),
              _apiclass.apifunction().bangla![1].s3.toString(),
              _apiclass.apifunction().bangla![1].s4.toString(),
              context,
          Colors.blue
          ),
        ],
      ): isClick>=21?Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
              backgroundColor: Colors.green,
              child: Text("3",style: TextStyle(color: Colors.white,fontSize: 30),)),
          custombangla(
              _apiclass.apifunction().bangla![2].question.toString(),
              _apiclass.apifunction().bangla![2].s1.toString(),
              _apiclass.apifunction().bangla![2].s2.toString(),
              _apiclass.apifunction().bangla![2].s3.toString(),
              _apiclass.apifunction().bangla![2].s4.toString(),
              context,
              Colors.blueAccent
          ),
        ],
      ): isClick>=18?Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
              backgroundColor: Colors.green,
              child: Text("4",style: TextStyle(color: Colors.white,fontSize: 30),)),
          custombangla(
              _apiclass.apifunction().bangla![3].question.toString(),
              _apiclass.apifunction().bangla![3].s1.toString(),
              _apiclass.apifunction().bangla![3].s2.toString(),
              _apiclass.apifunction().bangla![3].s3.toString(),
              _apiclass.apifunction().bangla![3].s4.toString(),
              context,
              Colors.teal
          ),
        ],
      ): isClick>=15?Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
              backgroundColor: Colors.green,
              child: Text("5",style: TextStyle(color: Colors.white,fontSize: 30),)),
          custombangla(
              _apiclass.apifunction().bangla![4].question.toString(),
              _apiclass.apifunction().bangla![4].s1.toString(),
              _apiclass.apifunction().bangla![4].s2.toString(),
              _apiclass.apifunction().bangla![4].s3.toString(),
              _apiclass.apifunction().bangla![4].s4.toString(),
              context,
              Colors.indigo
          ),
        ],
      ): isClick>=12?Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
              backgroundColor: Colors.green,
              child: Text("6",style: TextStyle(color: Colors.white,fontSize: 30),)),
          custombangla(
              _apiclass.apifunction().bangla![5].question.toString(),
              _apiclass.apifunction().bangla![5].s1.toString(),
              _apiclass.apifunction().bangla![5].s2.toString(),
              _apiclass.apifunction().bangla![5].s3.toString(),
              _apiclass.apifunction().bangla![5].s4.toString(),
              context,
              Colors.blueAccent
          ),
        ],
      ): isClick>=9?Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
              backgroundColor: Colors.green,
              child: Text("7",style: TextStyle(color: Colors.white,fontSize: 30),)),
          custombangla(
              _apiclass.apifunction().bangla![6].question.toString(),
              _apiclass.apifunction().bangla![6].s1.toString(),
              _apiclass.apifunction().bangla![6].s2.toString(),
              _apiclass.apifunction().bangla![6].s3.toString(),
              _apiclass.apifunction().bangla![6].s4.toString(),
              context,
              Colors.blue
          ),
        ],
      ): isClick>=6?Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
              backgroundColor: Colors.green,
              child: Text("8",style: TextStyle(color: Colors.white,fontSize: 30),)),
          custombangla(
              _apiclass.apifunction().bangla![7].question.toString(),
              _apiclass.apifunction().bangla![7].s1.toString(),
              _apiclass.apifunction().bangla![7].s2.toString(),
              _apiclass.apifunction().bangla![7].s3.toString(),
              _apiclass.apifunction().bangla![7].s4.toString(),
              context,
              Colors.green
          ),
        ],
      ): isClick>=3?Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
              backgroundColor: Colors.green,
              child: Text("9",style: TextStyle(color: Colors.white,fontSize: 30),)),
          custombangla(
              _apiclass.apifunction().bangla![8].question.toString(),
              _apiclass.apifunction().bangla![8].s1.toString(),
              _apiclass.apifunction().bangla![8].s2.toString(),
              _apiclass.apifunction().bangla![8].s3.toString(),
              _apiclass.apifunction().bangla![8].s4.toString(),
              context,
              Colors.teal
          ),
        ],
      ): isClick>=1?Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
              backgroundColor: Colors.green,
              child: Text("10",style: TextStyle(color: Colors.white,fontSize: 30),)),
          custombangla(
              _apiclass.apifunction().bangla![9].question.toString(),
              _apiclass.apifunction().bangla![9].s1.toString(),
              _apiclass.apifunction().bangla![9].s2.toString(),
              _apiclass.apifunction().bangla![9].s3.toString(),
              _apiclass.apifunction().bangla![9].s4.toString(),
              context,
              Colors.indigo
          ),
        ],
      ):Center(child: Text("Task Complete",style: TextStyle(color: Colors.indigoAccent,fontSize: 50),))
    );
  }
}
