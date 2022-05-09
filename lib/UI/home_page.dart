import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:khavchik/Business/provider.dart';
import 'package:khavchik/UI/LoginScreen/login_screen.dart';
import 'package:khavchik/UI/cooking_page.dart';
import 'package:khavchik/UI/party_page.dart';
import 'package:khavchik/UI/profile/profile.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Business/constants.dart';
import '../fluro.dart';

class MyHomePage extends StatefulWidget {
  static const routeName = '/home';
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static int _selectedIndex = 0;

  final List<Widget> _pages = <Widget>[
    CookingPage(),
    PartyPage(),
    Profile(),
  ];
  User? user = FirebaseAuth.instance.currentUser;
  @override
  void initState() {
    saveUSerCredentials();

    context.read<ProviderVars>().getUserData();
  }

  Future<void> saveUSerCredentials() async {
    bool? anonim = context.read<ProviderVars>().isAnonymous;
    if (anonim != true) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      print(user?.uid);
      await prefs.setString(TOKEN, "${user?.uid}");
    }
  }

  bool isInfoInserted = false;
  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderVars>(
      builder: (BuildContext context, provider, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Khavchik"),
            backgroundColor: Colors.orange,
            actions: [
              _selectedIndex == 2
                  ? IconButton(
                      icon: const Icon(Icons.logout),
                      onPressed: () {
                        provider.deleteUSerCredentials();
                        Fluttertoast.showToast(msg: 'Logged out');
                        provider.logout();
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            LoginScreen.routeName, (route) => false);
                      },
                    )
                  : Container(),
            ],
          ),
          body: Container(
            child: _pages.elementAt(
              _selectedIndex.toInt(),
            ),
          ),
          bottomNavigationBar: Container(
            width: MediaQuery.of(context).size.width * 0.2,
            padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50), topLeft: Radius.circular(50)),
            ),
            child: SizedBox(
              height: 90,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                ),
                child: BottomNavigationBar(
                    iconSize: 25,
                    showUnselectedLabels: true,
                    elevation: 0, // to get rid of the shadow
                    currentIndex: _selectedIndex,
                    selectedItemColor: Colors.orange,
                    onTap: onItemTapped,
                    backgroundColor: Colors
                        .black, // transparent, you could use 0x44aaaaff to make it slightly less transparent with a blue hue.
                    type: BottomNavigationBarType.fixed,
                    unselectedItemColor: Colors.white,
                    showSelectedLabels: false,
                    items: const <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                        icon: Icon(
                          Icons.home,
                        ),
                        label: 'Home',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.emoji_food_beverage),
                        label: 'Events',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.account_circle),
                        label: 'Profile',
                      ),
                    ]),
              ),
            ),
          ),
        );
      },
    );
  }

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
