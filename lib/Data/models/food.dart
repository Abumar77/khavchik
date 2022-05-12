import 'package:khavchik/Data/models/ingridients.dart';
import 'package:khavchik/Data/models/products.dart';

class Food {
  int? id;
  String? name;
  int? prepTimeInMinutes;
  List<Ingredient?>? ingridients;
  String? description;
}

class FoodInfo {
  int? id;
  int? prepTimeInMinutes;
  int? levelOfDifficulty;
  String? name;
  String? authorsName;
  String? authorsContact;
  String? description;
  String? imageLink;
  String? videoLink;
  String? websiteLink;
  List<Ingredient?>? ingredient;
  List<Illness?>? negativeToIllnesses;
  int? servings;
  String? nutritionFacts;
  String? instructions;
  int similarProducts;

  FoodInfo({
    this.id,
    this.authorsName,
    this.prepTimeInMinutes,
    this.levelOfDifficulty,
    this.name,
    this.authorsContact,
    this.description,
    this.videoLink,
    this.imageLink,
    this.websiteLink,
    this.ingredient,
    this.negativeToIllnesses,
    this.servings,
    this.nutritionFacts,
    this.instructions,
    this.similarProducts = 0,
  });

/* 0=easy 1=normal 2=middle 3=hard */

}
