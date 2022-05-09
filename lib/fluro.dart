import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:khavchik/UI/LoginScreen/login_screen.dart';
import 'package:khavchik/UI/LoginScreen/registration.dart';
import 'package:khavchik/UI/SplashScreen/splash_screen.dart';
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
    return const CookingPage();
  });
  static final Handler _partyHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> parameters) {
    return const PartyPage();
  });
  static final Handler _analyzeHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> parameters) {
    return const AnalyzePage();
  });
  static final Handler _detailedHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> parameters) {
    return const DetailedPage();
  });
  static final Handler _splashHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> parameters) {
    return const SplashScreen();
  });

  static final Handler _loginHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> parameters) {
    return const LoginScreen();
  });
  static final Handler _registerHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> parameters) {
    return const RegistrationScreen();
  });

  static void setupRouter() async {
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
    router.define(SplashScreen.routeName,
        handler: _splashHandler, transitionType: TransitionType.inFromBottom);
    router.define(LoginScreen.routeName,
        handler: _loginHandler, transitionType: TransitionType.inFromBottom);

    router.define(RegistrationScreen.routeName,
        handler: _registerHandler, transitionType: TransitionType.inFromBottom);
  }
}
