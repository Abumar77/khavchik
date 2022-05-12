import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:khavchik/Data/models/products.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../Data/models/user.dart';
import '../../fluro.dart';
import '../home_page.dart';
import 'login_screen.dart';

class RegistrationScreen extends StatefulWidget {
  static const routeName = '/registration';

  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
  String? name;
  String? email;
  String? number;
  String? dob;
  String? sex;
  int? weight;
  int? height;
  List<Products?>? allergyProducts;

  List<Illness?>? illness;

  final _formKey = GlobalKey<FormState>();

  static List<Products?> allergyIngridients = [
    Products("Milk"),
    Products("Eggs"),
    Products("Fish (e.g., bass, flounder, cod)"),
    Products("Crustacean shellfish (e.g., crab, lobster, shrimp)"),
    Products("Tree nuts (e.g., almonds, walnuts, pecans)"),
    Products("Peanuts"),
    Products("Wheat"),
    Products("Soybeans"),
  ];
  static List<Illness?> illnesses = [
    Illness("Diabetes"),
    Illness("Digestive Disorders"),
    Illness("Heart Health"),
    Illness("Kidney Disease"),
    Illness("Overweight and Obesity"),
  ];

  final items = allergyIngridients
      .map((ingridient) =>
          MultiSelectItem<Products?>(ingridient!, "${ingridient.name}"))
      .toList();

  final items2 = illnesses
      .map((ingridient) =>
          MultiSelectItem<Illness?>(ingridient!, "${ingridient.name}"))
      .toList();

  var selectedingridients5 = [];
  var selectedillnesses = [];

  String password = '';

  @override
  void initState() {
    selectedingridients5 = allergyIngridients;
    selectedillnesses = illnesses;
    super.initState();
  }

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
                    top: 100.0,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.4), width: 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Khavchik\nRegistration',
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
                  top: MediaQuery.of(context).size.height * 0.3,
                  left: 35,
                  right: 35,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            name = value;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'Full name',
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
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
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            number = value;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'Tell number',
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            dob = value;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'Date of birth (DD.MM.YYYY)',
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                    ToggleSwitch(
                      minWidth: 90.0,
                      initialLabelIndex: 1,
                      cornerRadius: 20.0,
                      activeFgColor: Colors.white,
                      inactiveBgColor: Colors.grey,
                      inactiveFgColor: Colors.white,
                      totalSwitches: 2,
                      labels: ['Male', 'Female'],
                      icons: [Icons.man, Icons.woman],
                      activeBgColors: [
                        [Colors.blue],
                        [Colors.pink]
                      ],
                      onToggle: (index) {
                        if (index == 0) {
                          sex = "Man";
                        } else {
                          sex = "Woman";
                        }
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            weight = int.parse(value);
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'Weight in KG',
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            height = int.parse(value);
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'Height in cm',
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Container(
                        width: 320,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(40))),
                        child: MultiSelectDialogField(
                          items: items,
                          title: const Text("I have allergies "),
                          selectedColor: Colors.orange,
                          decoration: BoxDecoration(
                            color: Colors.orange.withOpacity(0.1),
                            borderRadius:
                                BorderRadius.all(const Radius.circular(40)),
                            border: Border.all(
                              color: Colors.orange,
                              width: 9,
                            ),
                          ),
                          buttonIcon: const Icon(
                            Icons.sick,
                            color: Colors.black,
                          ),
                          buttonText: const Text(
                            "I have allergies:",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          onConfirm: (results) {
                            print(results.runtimeType);
                            allergyProducts = results as List<Products?>;
                            // selectedingridients5 = results;
                            // print(selectedingridients5?.length);
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Container(
                        width: 320,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(40))),
                        child: MultiSelectDialogField(
                          items: items2,
                          title: const Text("I have illness as:"),
                          selectedColor: Colors.orange,
                          decoration: BoxDecoration(
                            color: Colors.orange.withOpacity(0.1),
                            borderRadius:
                                BorderRadius.all(const Radius.circular(40)),
                            border: Border.all(
                              color: Colors.orange,
                              width: 9,
                            ),
                          ),
                          buttonIcon: const Icon(
                            Icons.sick,
                            color: Colors.black,
                          ),
                          buttonText: const Text(
                            "I have allergies:",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          onConfirm: (results) {
                            illness = results as List<Illness?>;
                            print(results.runtimeType);
                          },
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
                              signUp(email.toString(), password);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text('Register'),
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
                                LoginScreen.routeName,
                              );
                            },
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.black),
                            child: const Text(
                              'Login',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.black),
                            onPressed: () {
                              Fluttertoast.showToast(
                                  msg: 'Continuing as a anonymous user');
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

  void signUp(String email, String password) async {
    await _auth
        .createUserWithEmailAndPassword(
            email: email.toString(), password: password)
        .then((value) {
      Fluttertoast.showToast(msg: "Successfully registered");
      postDetailsToFirestore();
    }).catchError((e) {
      Fluttertoast.showToast(msg: e.message);
    });
  }

  postDetailsToFirestore() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

    User? user = _auth.currentUser;

    UserModel userModel = UserModel();

    userModel.email = email;
    userModel.uId = user?.uid;
    userModel.name = name;
    userModel.number = number;
    userModel.dob = dob;
    userModel.sex = sex;
    userModel.weight = weight;
    userModel.height = height;
    userModel.allergyProducts = allergyProducts;
    userModel.illness = illness;

    await firebaseFirestore
        .collection('users')
        .doc(user!.uid)
        .set(userModel.toMap())
        .then((value) {
      Fluttertoast.showToast(msg: 'Account created successfully');
      Navigator.pop(context);
      FluroRouterClass.router.navigateTo(
        context,
        LoginScreen.routeName,
      );
    }).catchError((e) {
      Fluttertoast.showToast(msg: e.message);
    });
  }
}
