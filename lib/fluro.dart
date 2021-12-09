import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:khavchik/UI/starting_page.dart';

import 'UI/home_page.dart';

class FluroRouterClass {
  static FluroRouter router = FluroRouter();

  static final Handler _startHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> parameters) {
    return StartingPage();
  });
  static final Handler _homeHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> parameters) {
    return MyHomePage();
  });

  static void setupRouter() {
    router.define(StartingPage.routeName,
        handler: _startHandler, transitionType: TransitionType.inFromRight);
    router.define(MyHomePage.routeName,
        handler: _homeHandler, transitionType: TransitionType.inFromRight);
  }
}
