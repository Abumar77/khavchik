import 'package:flutter/material.dart';
import 'package:khavchik/Data/user.dart';

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
  final _allergies = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Malumot'),
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
              TextFormField(
                controller: _allergies,
                decoration: const InputDecoration(
                    hintText: 'Allergiyangiz bor mahsulotlarni kiriting'),
                validator: (value) {},
                onSaved: (newValue) => _user.allergy = newValue,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.blue, primary: Colors.white),
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
