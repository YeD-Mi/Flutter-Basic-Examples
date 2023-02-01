class Kalite {
  Kalite({
    this.kaliteAdi,
    this.desenler,
  });

  String? kaliteAdi;
  List<Desen>? desenler;

  factory Kalite.fromJson(Map<String, dynamic> json) {
    var list = json["desenler"] as List;

    List<Desen> desenlerList = list.map((i) => Desen.fromJson(i)).toList();

    return Kalite(
      kaliteAdi: json["kalite_ad"],
      desenler: json["desenler"] != null ? desenlerList : <Desen>[],
    );
  }

  Map<String, dynamic> toJson() => {
        "kalite_ad": kaliteAdi,
        "desenler": List<dynamic>.from(desenler!.map((x) => x.toJson())),
      };
}

class Desen {
  Desen({this.desenAdi, this.desenResmi});
  String? desenAdi;
  String? desenResmi;
  Desen.fromJson(Map<String, dynamic> json) {
    desenAdi = json['desen_adi'];
    desenResmi = json['desen_resmi'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['desen_adi'] = desenAdi;
    data['desen_resmi'] = desenResmi;
    return data;
  }
}
