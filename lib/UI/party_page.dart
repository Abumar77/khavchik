import 'package:flutter/material.dart';

class PartyPage extends StatelessWidget {
  static const routeName = '/party';

  const PartyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'Soon................',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
