

import 'package:kuiz/model/model.dart';

class Apiclass{




 KuizModel apifunction(){

  Map<String, List<Map<String, String>>> totalApi={
     "bangla": [
       {
         "question": "বাংলা সাহিত্যে চলিত ভাষায় রচিত প্রথম গ্রন্থ",
         "1": "নারীর মূল্য",
         "2": "রায়তের কথা",
         "3": "তেল নুন লাকড়ী",
         "4": "বীরবলের হালখাতা",
         "answer":"4"
       },
       {
         "question": "বাংলা ভাষা ও সাহিত্যের আধুনিকতম শাখা কোনটি?",
         "1": "কাব্য",
         "2": "নাটক",
         "3": "ছোটগল্প ",
         "4": "উপন্যাস",
         "answer":"3"
       }

     ]
   };

   var a=KuizModel.fromJson(totalApi);
   return a;


 }


}