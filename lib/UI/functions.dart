import 'package:flutter/cupertino.dart';
import 'package:khavchik/Data/meal_data.dart';
import 'package:khavchik/Data/models/food.dart';
import 'package:khavchik/UI/analyze_page/analyze_page.dart';

import '../Data/models/ingridients.dart';
import '../fluro.dart';

bubbleSort(List<FoodInfo?>? array) {
  int lengthOfArray = array!.length;
  for (int i = 0; i < lengthOfArray - 1; i++) {
    for (int j = 0; j < lengthOfArray - i - 1; j++) {
      if (array[j]!.similarProducts < array[j + 1]!.similarProducts) {
        FoodInfo? temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
      }
    }
  }
  return (array);
}

void analysisFunction(
    {List<Ingredient?>? userInput,
    int? userTime,
    required BuildContext context}) {
  List<FoodInfo?>? output = top35Meals;
  List<FoodInfo?>? finalOutput;

  for (int s = 0; s <= userInput!.length - 1; s++) {
    for (int i = 0; i <= output.length - 1; i++) {
      for (int e = 0; e <= output[i]!.ingredient!.length - 1; e++) {
        if (userInput[s]?.id == output[i]?.ingredient![e]?.id) {
          output[i]!.similarProducts = output[i]!.similarProducts + 1;
          print(output[i]?.name);
          print(output[i]!.similarProducts);
        }
      }
    }
  }
  finalOutput = bubbleSort(output);
  FluroRouterClass.router.navigateTo(
    context,
    AnalyzePage.routeName,
    routeSettings: RouteSettings(
      arguments: finalOutput,
    ),
  );
}
