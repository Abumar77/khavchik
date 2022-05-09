import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:khavchik/Data/models/products.dart';
import 'package:khavchik/Data/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'constants.dart';

class ProviderVars extends ChangeNotifier {
  UserModel? loggedInUser;
  bool? loggedIn = false;
  bool? isAnonymous = false;
  List<Products> userAllergyProducts = [];

  Future<void> getUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String? uid = prefs.getString(TOKEN);
    //
    // User? user = FirebaseAuth.instance.currentUser;
    // print(user?.uid);
    await FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .get()
        .then((value) {
      loggedInUser = UserModel.fromMap(value.data());
      if (loggedInUser != null) {
        loggedIn = true;
      }
    }).catchError((error) {
      print(error.toString());
    });
    notifyListeners();
  }

  void logout() {
    loggedIn = false;
    notifyListeners();
  }

  Future<void> anonim() async {
    isAnonymous = true;
    notifyListeners();
  }

  void deleteUSerCredentials() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(TOKEN);
  }

  void getUserSkills() async {
    CollectionReference getSkills =
        FirebaseFirestore.instance.collection('users');
    await getSkills.get().then((snapshot) {
      if (userAllergyProducts.isNotEmpty) userAllergyProducts.clear();
      for (var element in snapshot.docs) {
        userAllergyProducts.add(Products.fromJson(element.data()));
        print("my allergies from :" + element.data().toString());
      }
    });
    notifyListeners();
  }
}
