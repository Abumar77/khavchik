import 'package:flutter/material.dart';
import 'package:khavchik/Data/user.dart';
import 'package:searchfield/searchfield.dart';

import '../fluro.dart';

class InfoPage extends StatefulWidget {
  InfoPage({Key? key, required this.isInfoInserted}) : super(key: key);
  bool isInfoInserted;

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  late User _user;
  final _keyForm = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _weight = TextEditingController();
  final _height = TextEditingController();
  final _allergies = GlobalKey<FormState>();

  List<String> allergyIngridients = [
    'Sut',
    'Tuhum',
    'Anor',
    'Yong\'oq',
    'Ananas',
    'Asal',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Malumot'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Form(
        key: _keyForm,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: const Center(
                  child: Text(
                    'Malumotingizni kiriting  ',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              TextFormField(
                controller: _name,
                decoration:
                    const InputDecoration(hintText: 'Ismingizni kiriting'),
                validator: (value) {
                  if (value == null) return 'Ismingizni kiritishingiz majburiy';

                  return null;
                },
                onSaved: (newValue) => _user.name = newValue,
              ),
              TextFormField(
                controller: _weight,
                decoration:
                    const InputDecoration(hintText: 'Buyingizni kiriting'),
                validator: (value) {},
                onSaved: (newValue) => _user.height = newValue as double,
              ),
              TextFormField(
                controller: _height,
                decoration:
                    const InputDecoration(hintText: 'Vazningizni kiriting'),
                validator: (value) {},
                onSaved: (newValue) => _user.weight = newValue as double,
              ),
              Form(
                key: _allergies,
                child: SearchField(
                  suggestions: allergyIngridients,
                  hint: 'Allergiyangiz bor mahsulotlar',
                  searchStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.black.withOpacity(0.8),
                  ),
                  searchInputDecoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black.withOpacity(0.8),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                  maxSuggestionsInViewPort: 6,
                  itemHeight: 50,
                  onTap: (x) {
                    print(x);
                  },
                ),
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                    primary: Colors.black),
                onPressed: () {
                  FluroRouterClass.router.navigateTo(
                    context,
                    '/home',
                  );
                  //add state management to make inserted info false
                },
                child: Text('Junatish'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
