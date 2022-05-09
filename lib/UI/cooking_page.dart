import 'package:flutter/material.dart';
import 'package:multi_select_flutter/chip_display/multi_select_chip_display.dart';
import 'package:multi_select_flutter/chip_field/multi_select_chip_field.dart';
import 'package:khavchik/Data/models/ingridients.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';

import '../fluro.dart';

class CookingPage extends StatefulWidget {
  static const routeName = '/cookingPage';
  const CookingPage({Key? key}) : super(key: key);

  @override
  _CookingPageState createState() => _CookingPageState();
}

class _CookingPageState extends State<CookingPage> {
  static List<Ingridient> ingridients = [
    Ingridient(id: 1, name: "Sut"),
    Ingridient(id: 2, name: "Tuhum"),
    Ingridient(id: 3, name: "Saryog"),
    Ingridient(id: 5, name: "Yog"),
    Ingridient(id: 6, name: "Makaron"),
    Ingridient(id: 7, name: "Pomidor"),
    Ingridient(id: 8, name: "Bodiring"),
    Ingridient(id: 9, name: "Soya"),
    Ingridient(id: 10, name: "Un"),
    Ingridient(id: 11, name: "Kartoshka"),
    Ingridient(id: 12, name: "Sabzi"),
    Ingridient(id: 13, name: "Piyoz"),
    Ingridient(id: 14, name: "Krahmal"),
    Ingridient(id: 15, name: "Tuz"),
    Ingridient(id: 16, name: "Shakar"),
    Ingridient(id: 17, name: "Qaymog"),
    Ingridient(id: 18, name: "Goroh"),
    Ingridient(id: 19, name: "Rollton"),
    Ingridient(id: 20, name: "Mol gushti"),
    Ingridient(id: 21, name: "Quy gushti"),
    Ingridient(id: 22, name: "Tovuq Gushti"),
    Ingridient(id: 23, name: "Bolgar qalampir"),
    Ingridient(id: 24, name: "Lablagi"),
    Ingridient(id: 25, name: "Gurunch"),
    Ingridient(id: 26, name: "Okroshka"),
    Ingridient(id: 27, name: "Dinozavr"),
  ];
  final items = ingridients
      .map((ingridient) =>
          MultiSelectItem<Ingridient>(ingridient, ingridient.name))
      .toList();

  List<Ingridient> selectedingridients5 = [];
  final _multiSelectKey = GlobalKey<FormFieldState>();

  @override
  void initState() {
    selectedingridients5 = ingridients;
    super.initState();
  }

  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double widthCards = MediaQuery.of(context).size.width / 2;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 50, top: 30),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Bugun nima pishiramz radnoy?",
                      style: TextStyle(fontSize: 34, fontFamily: 'Arial'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 40, bottom: 0),
                  child: TextField(
                    cursorColor: Colors.orange,
                    controller: searchController,
                    decoration: const InputDecoration(
                      focusColor: Colors.orange,
                      fillColor: Colors.orange,
                      hoverColor: Colors.orange,
                      border: OutlineInputBorder(),
                      labelText: 'Taomni izlang',
                      hintText: 'Taom nomi',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: MultiSelectDialogField(
                    items: items,
                    title: const Text("Maxsulotlar"),
                    selectedColor: Colors.orange,
                    decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(0.1),
                      borderRadius: BorderRadius.all(const Radius.circular(40)),
                      border: Border.all(
                        color: Colors.orange,
                        width: 2,
                      ),
                    ),
                    buttonIcon: const Icon(
                      Icons.shopping_cart,
                      color: Colors.black,
                    ),
                    buttonText: const Text(
                      "Mening Masalliglarim",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    onConfirm: (results) {
                      //_selectedAnimals = results;
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                      top: 30.0, left: 10, right: 10, bottom: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Bugungi kunning eng kup tayyorlangan 2 ta taomi",
                      style: TextStyle(fontSize: 16, fontFamily: 'Arial'),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 160,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          width: widthCards - 10,
                          decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/palov.png'),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          width: widthCards - 10,
                          decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/pancake.png'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    padding: EdgeInsets.all(9.0),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/kfc.jpg'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        isExtended: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.orange[400],
        onPressed: () {
          FluroRouterClass.router.navigateTo(
            context,
            '/analyze',
          );
        },
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
