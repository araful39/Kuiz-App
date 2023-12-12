import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuiz/api/total_api.dart';

class English extends StatefulWidget {
  const English({super.key});

  English.fromJson(v);

  @override
  State<English> createState() => _EnglishState();

  toJson() {}
}

class _EnglishState extends State<English> {
  Apiclass _apiclass=Apiclass();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Time"),
      ),
      body: Text("_apiclass.apifunction().english.runtimeType.toString()"),
    );
  }
}

// class English extends StatefulWidget {
//   const English({super.key});
//   @override
//   State<English> createState() => _EnglishState();
//
//
//
// class _EnglishState extends State<English> {
//   int _countTime=30;
//
//   @override
//   void initState() {
//     setTimer();
//     super.initState();
//   }
//   void setTimer()async{
//     Future.delayed(Duration(seconds: 1)).then((value)  {
//
//       setState(() {
//         if(_countTime>=1){
//           setTimer();
//           _countTime--;
//
//         }
//         else{
//
//           print(" end ");
//
//         }
//       });
//
//     });
//   }
//   Apiclass _apiclass = Apiclass();
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     print("----${_countTime}----");
//     return Scaffold(
//         appBar: AppBar(
//             toolbarHeight: 100,
//             title: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 CircleAvatar(
//                     maxRadius: 50,
//                     backgroundColor: Colors.green,
//                     child: Text(_countTime.toString(),style: TextStyle(color: Colors.white,fontSize: 30),)),
//               ],
//             )
//         ),
//
//         body:ListView.builder(
//           itemCount:_apiclass.apifunction().english!.length,
//             itemBuilder: (context,index){
//               return Column(
//                 children: [
//                   Text(_apiclass.apifunction().english[0].)
//                 ],
//               );
//             })
//
//     );
//   }
// }
