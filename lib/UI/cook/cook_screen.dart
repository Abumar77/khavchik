import 'package:flutter/material.dart';
import 'package:khavchik/UI/functions.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../Data/models/ingridients.dart';

class CookScreen extends StatefulWidget {
  const CookScreen({Key? key}) : super(key: key);

  @override
  State<CookScreen> createState() => _CookScreenState();
}

class _CookScreenState extends State<CookScreen> {
  static List<Ingredient?>? ingridients = [
    Ingredient(name: "tomatoes", id: 1),
    Ingredient(name: "sugar", id: 2),
    Ingredient(name: "baking soda", id: 3),
    Ingredient(name: "salt", id: 4),
    Ingredient(name: "egg", id: 5),
    Ingredient(name: "milk", id: 6),
    Ingredient(name: "oil", id: 7),
    Ingredient(name: "banana", id: 8),
    Ingredient(name: "tomato", id: 9),
    Ingredient(name: "onion", id: 10),
    Ingredient(name: "garlic", id: 11),
    Ingredient(name: "pepper powder", id: 12),
    Ingredient(name: "butter", id: 13),
    Ingredient(name: "cream", id: 14),
    Ingredient(name: "bread", id: 15),
    Ingredient(name: "potato", id: 16),
    Ingredient(name: "cheese", id: 17),
    Ingredient(name: "sausage", id: 18),
    Ingredient(name: "oil", id: 19),
    Ingredient(name: "Shampinion", id: 20),
    Ingredient(name: "rice", id: 21),
    Ingredient(name: "lamb meat", id: 22),
    Ingredient(name: "carrot", id: 23),
    Ingredient(name: "garlic", id: 24),
    Ingredient(name: "chickpeas", id: 25),
    Ingredient(name: "zira", id: 26),
  ];
  final items = ingridients
      ?.map((ingridient) => MultiSelectItem<Ingredient?>(
          ingridient!, ingridient.name.toString().toUpperCase()))
      .toList();

  List<Ingredient?>? selectedingridients5 = [];
  int? minutesOfUser = 30;

  @override
  void initState() {
    selectedingridients5 = ingridients;
    super.initState();
  }

  final _multiSelectKey = GlobalKey<FormFieldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 150.0,
            ),
            child: SizedBox(
              width: 300,
              child: Text(
                "Choose the products you have and Khavchik will the options you can cook",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: MultiSelectDialogField(
              items: items!,
              title: const Text("Products"),
              selectedColor: Colors.orange,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(const Radius.circular(40)),
                border: Border.all(
                  color: Colors.orange,
                  width: 2,
                ),
              ),
              buttonIcon: const Icon(
                Icons.shopping_cart,
                color: Colors.orange,
              ),
              buttonText: const Text(
                "My products",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              onConfirm: (results) {
                selectedingridients5 = results.cast<Ingredient?>();
              },
            ),
          ),
          ToggleSwitch(
            minWidth: 200.0,
            minHeight: 100.0,
            fontSize: 16.0,
            initialLabelIndex: 1,
            activeBgColor: [Colors.orange],
            activeFgColor: Colors.white,
            inactiveBgColor: Colors.black54,
            inactiveFgColor: Colors.white,
            totalSwitches: 3,
            labels: ['<30 Minutes', '<60 Mintes', '>60 Minutes'],
            onToggle: (index) {
              print('switched to: $index');
              if (index == 0) {
                minutesOfUser = 30;
              } else if (index == 1) {
                minutesOfUser = 60;
              } else if (index == 2) {
                minutesOfUser = 90;
              } else {
                minutesOfUser = 15;
              }
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () {
          analysisFunction(
              context: context,
              userInput: selectedingridients5,
              userTime: minutesOfUser);
        },
        child: const Text(
          "SUBMIT",
          style: TextStyle(fontSize: 11),
        ),
      ),
    );
  }
}
