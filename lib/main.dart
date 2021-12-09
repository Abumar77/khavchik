import 'package:flutter/material.dart';
import 'package:khavchik/fluro.dart';

import 'UI/home_page.dart';

void main() {
  FluroRouterClass.setupRouter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: FluroRouterClass.router.generator,
    );
  }
}
