import 'package:kuiz/pagese/english/english_homepage.dart';
import 'package:kuiz/pagese/ict.dart';
import 'package:kuiz/pagese/math.dart';

class KuizModel {
  List<Bangla>? bangla;
  List<English>? english;
  List<Ict>? ict;
  List<Math>? math;

  KuizModel({this.bangla, this.english, this.ict, this.math});

  KuizModel.fromJson(Map<String, dynamic> json) {
    if (json['bangla'] != null) {
      bangla = <Bangla>[];
      json['bangla'].forEach((v) {
        bangla!.add(new Bangla.fromJson(v));
      });
    }
    if (json['english'] != null) {
      english = <English>[];
      json['english'].forEach((v) {
        english!.add(new English.fromJson(v));
      });
    }
    if (json['ict'] != null) {
      ict = <Ict>[];
      json['ict'].forEach((v) {
        ict!.add(new Ict.fromJson(v));
      });
    }
    if (json['math'] != null) {
      math = <Math>[];
      json['math'].forEach((v) {
        math!.add(new Math.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.bangla != null) {
      data['bangla'] = this.bangla!.map((v) => v.toJson()).toList();
    }
    if (this.english != null) {
      data['english'] = this.english!.map((v) => v.toJson()).toList();
    }
    if (this.ict != null) {
      data['ict'] = this.ict!.map((v) => v.toJson()).toList();
    }
    if (this.math != null) {
      data['math'] = this.math!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Bangla {
  String? s1;
  String? s2;
  String? s3;
  String? s4;
  String? question;
  String? answer;

  Bangla({this.s1, this.s2, this.s3, this.s4, this.question, this.answer});

  Bangla.fromJson(Map<String, dynamic> json) {
    s1 = json['1'];
    s2 = json['2'];
    s3 = json['3'];
    s4 = json['4'];
    question = json['question'];
    answer = json['answer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['1'] = this.s1;
    data['2'] = this.s2;
    data['3'] = this.s3;
    data['4'] = this.s4;
    data['question'] = this.question;
    data['answer'] = this.answer;
    return data;
  }
}
