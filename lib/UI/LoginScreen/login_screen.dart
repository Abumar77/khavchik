import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:khavchik/Business/provider.dart';
import 'package:khavchik/UI/LoginScreen/registration.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../fluro.dart';
import '../home_page.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String email = '';

  String password = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/login.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    top: 200.0,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.4), width: 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    width: 200,
                    height: 100,
                    child: const Text(
                      'Khavchik\nLogin',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.4,
                  left: 35,
                  right: 35,
                ),
                child: Column(
                  children: [
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          email = value;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'Email',
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    TextFormField(
                      key: _formKey,
                      onChanged: (value) {
                        password = value;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the password';
                        } else if (value.length <= 6) {
                          return 'Password must be greator than 6 digits';
                        }
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              maximumSize: const Size(170.0, 90.0),
                              minimumSize: const Size(170.0, 60.0),
                              primary: Colors.black,
                              shape: const StadiumBorder(),
                            ),
                            onPressed: () {
                              signIn(email, password);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('LOG IN'),
                                Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                ),
                              ],
                            )),
                      ],
                    ),
                    const SizedBox(height: 30.0),
                    Padding(
                      padding: const EdgeInsets.only(top: 58.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              FluroRouterClass.router.navigateTo(
                                context,
                                RegistrationScreen.routeName,
                              );
                            },
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.black),
                            child: const Text(
                              'Register',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.black),
                            onPressed: () {
                              Fluttertoast.showToast(
                                  msg: 'Continuing as a anonymous user');
                              context.read<ProviderVars>().anonim();
                              FluroRouterClass.router.navigateTo(
                                context,
                                MyHomePage.routeName,
                              );
                            },
                            child: const Text(
                              'Continue as anonymous user?',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void signIn(String email, String password) async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((uid) => {
              Fluttertoast.showToast(msg: 'Login Successful'),
              FluroRouterClass.router.navigateTo(
                context,
                MyHomePage.routeName,
              ),
            })
        .catchError((e) {
      Fluttertoast.showToast(msg: e!.message);
    });
  }
}
