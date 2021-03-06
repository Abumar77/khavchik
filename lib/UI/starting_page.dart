import 'dart:math';
import 'package:khavchik/Business/constants.dart';
import 'package:khavchik/UI/home_page.dart';
import 'package:khavchik/fluro.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ItemData {
  final Color color;
  final String image;
  final String text1;
  final String text2;
  final String text3;
  ItemData(this.color, this.image, this.text1, this.text2, this.text3);
}

class StartingPage extends StatefulWidget {
  static const routeName = '/';

  @override
  _StartingPage createState() => _StartingPage();
}

class _StartingPage extends State<StartingPage> {
  bool lastPage = false;
  int page = 0;
  late LiquidController liquidController;
  late UpdateType updateType;

  List<ItemData> data = [
    ItemData(Colors.orange, "assets/1.png", "Hi", " it's Khavchik !!!",
        "Your kitchen Hero"),
    ItemData(Colors.deepPurpleAccent, "assets/analiz.png", "It analyses",
        " products", "you have"),
    ItemData(Colors.green, "assets/tavsiya.png", "Recommends", "optimal",
        "solutions to cook"),
    ItemData(Colors.blue, "assets/etap.png", "It teaches you", "step by step",
        "cooking"),
    ItemData(Colors.red, "assets/gaz.png", "Don't,hurt your stomach ",
        "stay healthy, ", "GRAAAAPEEEE !!!"),
  ];

  @override
  void initState() {
    liquidController = LiquidController();
    super.initState();
  }

  Widget _buildDot(int index) {
    double selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - ((page) - index).abs(),
      ),
    );
    double zoom = 1.0 + (2.0 - 1.0) * selectedness;
    return SizedBox(
      width: 25.0,
      child: Center(
        child: Material(
          color: Colors.white,
          type: MaterialType.circle,
          child: SizedBox(
            width: 8.0 * zoom,
            height: 8.0 * zoom,
          ),
        ),
      ),
    );
  }

  static const style = TextStyle(
    color: Colors.white,
    fontSize: 30,
    fontFamily: "Billy",
    fontWeight: FontWeight.w600,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            LiquidSwipe.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Container(
                  width: double.infinity,
                  color: data[index].color,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset(
                        data[index].image,
                        height: 400,
                        fit: BoxFit.contain,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            data[index].text1,
                            style: style,
                          ),
                          Text(
                            data[index].text2,
                            style: style,
                          ),
                          Text(
                            data[index].text3,
                            style: style,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              positionSlideIcon: 0.8,
              slideIconWidget: const Icon(Icons.arrow_back_ios),
              onPageChangeCallback: pageChangeCallback,
              waveType: WaveType.liquidReveal,
              liquidController: liquidController,
              fullTransitionValue: 880,
              enableSideReveal: true,
              enableLoop: false,
              ignoreUserGestureWhileAnimating: true,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  const Expanded(child: SizedBox()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List<Widget>.generate(data.length, _buildDot),
                  ),
                ],
              ),
            ),
            lastPage
                ? Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: TextButton(
                        style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                        ),
                        onPressed: () {
                          _storeOnboardInfo();
                          FluroRouterClass.router.navigateTo(
                            context,
                            MyHomePage.routeName,
                          );
                        },
                        child: const Text("START!!!"),
                      ),
                    ),
                  )
                : Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: TextButton(
                        onPressed: () {
                          liquidController.jumpToPage(
                              page: liquidController.currentPage + 1 >
                                      data.length - 1
                                  ? 0
                                  : liquidController.currentPage + 1);
                        },
                        child: const Text("NEXT"),
                        style: TextButton.styleFrom(
                          primary: Colors.white.withOpacity(0.3),
                        ),
                      ),
                    ),
                  ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white.withOpacity(0.3),
                  ),
                  onPressed: () {
                    setState(() {
                      lastPage = true;
                    });
                    liquidController.animateToPage(
                        page: data.length - 1, duration: 700);
                    setState(() {
                      lastPage = false;
                    });
                  },
                  child: const Text("SKIP"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  pageChangeCallback(int lpage) {
    setState(() {
      if (lpage == 4) {
        lastPage = true;
      }
      page = lpage;
    });
  }

  _storeOnboardInfo() async {
    print("Shared pref called");
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(ISVIEWED, isViewed);
    print(prefs.getInt(ISVIEWED));
  }
}
