import 'package:flutter/material.dart';

import '../fluro.dart';
import 'info_page.dart';

class MyHomePage extends StatefulWidget {
  static const routeName = '/home';
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isInfoInserted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SafeArea(
          child: isInfoInserted
              ? Padding(
                  padding: const EdgeInsets.only(top: 300, right: 30, left: 30),
                  child: Column(
                    children: const [
                      Text(
                        'Sizning malumotlaringiz bazada va sizga individual tavsiyalar bulmoqda',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.only(top: 300, right: 30, left: 30),
                  child: Column(
                    children: [
                      const Text(
                        'Malumotlarni kiriting va individual tavsiyaga ega buling',
                        style: TextStyle(fontSize: 20),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => InfoPage(
                                isInfoInserted: isInfoInserted,
                              ),
                            ),
                          );
                        },
                        child: const Text("Malumotni tuldiring"),
                      )
                    ],
                  ),
                ),
        ),
      ),
      appBar: AppBar(
        title: Text("Khavchik"),
        backgroundColor: Colors.orange[400],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        FluroRouterClass.router.navigateTo(
                          context,
                          '/cookingPage',
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Ovqat qilishni \nboshlash',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.orange,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage('assets/cook.png'),
                            ),
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        FluroRouterClass.router.navigateTo(
                          context,
                          '/party',
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Bayramona\n retseptlar',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.orange,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage('assets/party.png'),
                            ),
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
