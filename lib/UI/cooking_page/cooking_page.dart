import 'package:flutter/material.dart';
import 'package:khavchik/Data/models/food.dart';
import 'package:khavchik/UI/detailed_screen/detailed.dart';

import '../../Data/meal_data.dart';
import '../../fluro.dart';
import 'components.dart';

class CookingPage extends StatefulWidget {
  static const routeName = '/cookingPage';
  const CookingPage({Key? key}) : super(key: key);

  @override
  _CookingPageState createState() => _CookingPageState();
}

class _CookingPageState extends State<CookingPage> {
  final CategoriesScroller categoriesScroller = const CategoriesScroller();
  bool closeTopContainer = false;
  double topContainer = 0;
  int activeNum = 0;
  @override
  void initState() {
    super.initState();
  }

  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final double categoryHeight = MediaQuery.of(context).size.height * 0.30;
    return Scaffold(
      backgroundColor: Colors.grey[150],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/backImage.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 50, top: 100),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "What meal\nWe will cook \ntoday Bro?",
                        style: TextStyle(
                            fontSize: 34,
                            fontFamily: 'Arial',
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 40, bottom: 0),
                    child: TextFormField(
                      style: const TextStyle(
                        color: Colors.white,
                        decorationColor: Color(0XFFFFCC00), //Font color change
                      ),
                      controller: searchController,
                      decoration: const InputDecoration(
                        hintStyle: TextStyle(color: Colors.white),
                        labelStyle: TextStyle(color: Colors.white),
                        suffixIconColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.orange, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0),
                        ),
                        iconColor: Colors.white,
                        focusColor: Colors.white,
                        fillColor: Colors.white,
                        hoverColor: Colors.white,
                        border: OutlineInputBorder(),
                        labelText: 'Search for food',
                        suffix: Icon(Icons.search),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Recommended",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Arial',
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "See All",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Arial',
                            color: Colors.orange,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 200),
              opacity: closeTopContainer ? 0 : 1,
              child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.topCenter,
                  height: closeTopContainer ? 0 : categoryHeight,
                  child: categoriesScroller),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 30),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "National meal in Trend",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Arial',
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                FluroRouterClass.router.navigateTo(
                  context,
                  DetailedPage.routeName,
                  routeSettings: RouteSettings(
                    arguments: top35Meals[5],
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                    border: Border.all(color: Colors.black)),
                width: MediaQuery.of(context).size.width - 30,
                height: 150,
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: CircleAvatar(
                        radius: 60.0,
                        backgroundImage: AssetImage(
                          "assets/plov.png",
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        const Padding(
                          padding:
                              EdgeInsets.only(bottom: 8.0, right: 130, top: 10),
                          child: Text(
                            "Tashkent Plov",
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          width: MediaQuery.of(context).size.width * .6,
                          child: const Text(
                              "Pilaf is perhaps one of the most delicious dishes of our cuisine. Not a single event can do without pilaf, so every UZBEk should be able to cook it."),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   isExtended: true,
      //   foregroundColor: Colors.black,
      //   backgroundColor: Colors.orange[400],
      //   onPressed: () {
      //     FluroRouterClass.router.navigateTo(
      //       context,
      //       '/analyze',
      //     );
      //   },
      //   child: const Icon(
      //     Icons.add,
      //     size: 40,
      //   ),
      // ),
    );
  }
}
