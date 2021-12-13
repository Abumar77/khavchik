import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:khavchik/UI/starting_page.dart';

import 'UI/analyze_page.dart';
import 'UI/cooking_page.dart';
import 'UI/detailed.dart';
import 'UI/home_page.dart';
import 'UI/party_page.dart';

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

  static final Handler _cookingHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> parameters) {
    return CookingPage();
  });

  static final Handler _partyHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> parameters) {
    return PartyPage();
  });
  static final Handler _analyzeHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> parameters) {
    return AnalyzePage();
  });
  static final Handler _detailedHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> parameters) {
    return DetailedPage();
  });
  static void setupRouter() {
    router.define(StartingPage.routeName,
        handler: _startHandler, transitionType: TransitionType.inFromRight);
    router.define(CookingPage.routeName,
        handler: _cookingHandler, transitionType: TransitionType.fadeIn);
    router.define(MyHomePage.routeName,
        handler: _homeHandler, transitionType: TransitionType.inFromRight);
    router.define(PartyPage.routeName,
        handler: _partyHandler, transitionType: TransitionType.inFromRight);
    router.define(AnalyzePage.routeName,
        handler: _analyzeHandler, transitionType: TransitionType.inFromTop);
    router.define(DetailedPage.routeName,
        handler: _detailedHandler, transitionType: TransitionType.inFromBottom);
  }
}
