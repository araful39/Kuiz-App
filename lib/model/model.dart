class KuizModel {
  List<Bangla>? bangla;

  KuizModel({this.bangla});

  KuizModel.fromJson(Map<String, dynamic> json) {
    if (json['bangla'] != null) {
      bangla = <Bangla>[];
      json['bangla'].forEach((v) {
        bangla!.add(new Bangla.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.bangla != null) {
      data['bangla'] = this.bangla!.map((v) => v.toJson()).toList();
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
