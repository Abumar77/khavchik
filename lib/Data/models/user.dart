import 'package:khavchik/Data/models/products.dart';

class UserModel {
  String? name;
  String? uId;
  String? email;
  String? number;
  String? dob;
  String? sex;
  int? weight;
  int? height;
  List<Products?>? allergyProducts;

  List<Illness?>? illness;

  UserModel({
    this.name,
    this.email,
    this.uId,
    this.number,
    this.dob,
    this.sex,
    this.weight,
    this.height,
    this.allergyProducts,
    this.illness,
  });

  factory UserModel.fromMap(map) {
    return UserModel(
      name: map['name'],
      email: map['email'],
      number: map['number'],
      dob: map['dob'],
      uId: map['uId'],
      sex: map['sex'],
      weight: map['weight'],
      height: map['height'],
      allergyProducts: [
        for (final product in map['allergyProducts'] ?? [])
          Products.fromJson(product),
      ],
      illness: [
        for (final illnes in map['illness'] ?? []) Illness.fromJson(illnes),
      ],
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'number': number,
      'dob': dob,
      'uId': uId,
      'weight': weight,
      'height': height,
      'sex': sex,
      'allergyProducts': [
        for (final product in allergyProducts ?? []) product.toJson()
      ],
      'illness': [for (final illnes in illness ?? []) illnes.toJson()],
    };
  }
}
