class Products {
  String? name;

  Products(this.name);
  Products.fromJson(dynamic json) {
    name = json['name'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    return data;
  }
}

class Illness {
  String? name;

  Illness(this.name);

  Illness.fromJson(dynamic json) {
    name = json['name'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    return data;
  }
}
