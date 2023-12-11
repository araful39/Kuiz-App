import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuiz/api/total_api.dart';

import 'package:kuiz/model/model.dart';

Widget custombangla(String question ,String a,String b ,String c,String d,BuildContext context){

 Apiclass _apiclas=Apiclass();
  return   Column(

    mainAxisAlignment: MainAxisAlignment.center,

    children: [
      SizedBox(
        height: 50,
        width: MediaQuery.of(context).size.width*0.9,
        child: Card(
          color: Colors.indigo,
          child: Center(child: Text(question,style: TextStyle(color: Colors.white),)),
        ),
      ),
      SizedBox(height: 20,),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 50,
                width: 120,
                child: Card(
                  color: Colors.indigo,
                  child: Center(child: Text(a,style: TextStyle(color: Colors.white),)),
                ),
              ),
              SizedBox(
                height: 50,
                width: 120,
                child: Card(
                  color: Colors.indigo,
                  child: Center(child: Text(b,style: TextStyle(color: Colors.white),)),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 50,
                width: 120,
                child: Card(
                  color: Colors.indigo,
                  child: Center(child: Text(c,style: TextStyle(color: Colors.white),)),
                ),
              ),
              SizedBox(
                height: 50,
                width: 120,
                child: Card(
                  color: Colors.indigo,
                  child: Center(child: Text(d,style: TextStyle(color: Colors.white),)),
                ),
              ),
            ],
          ),
        ],
      )
    ],
  );

}