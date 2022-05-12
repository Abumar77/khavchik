import 'package:flutter/material.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';

class Ingredient {
  int? id;
  String? name;
  String? quantity;
  int? approximatePricePer100gram;

  Ingredient({
    this.quantity,
    this.id,
    this.name,
    this.approximatePricePer100gram,
  });
}
