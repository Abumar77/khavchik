import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:khavchik/Business/provider.dart';

import 'package:khavchik/fluro.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Business/constants.dart';

int? isViewed;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isViewed = prefs.getInt(ISVIEWED);
  FluroRouterClass.setupRouter();
  runApp(ChangeNotifierProvider(
      create: (BuildContext context) => ProviderVars(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), //isViewed != 0 ? '/' :
      initialRoute: "/splash-screen",
      onGenerateRoute: FluroRouterClass.router.generator,
    );
  }
}
