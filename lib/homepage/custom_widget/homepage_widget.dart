





 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget  homepage(String subject, String image, BuildContext context){
  return  Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      height: MediaQuery.of(context).size.height*1.5,
      width: MediaQuery.of(context).size.width*1.5,
      child: Card(
        color: Colors.indigo,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: 10),
            Image.network(
              image,
              height: MediaQuery.of(context).size.height*0.1,
              width: MediaQuery.of(context).size.width*3.5,

            ),
            SizedBox(
              height: 10,
            ),
            Text(subject,style: TextStyle(color: Colors.white,fontSize: 25),),
          ],
        ),
      ),
    );
  }
