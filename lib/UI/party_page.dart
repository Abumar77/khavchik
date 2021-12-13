import 'package:flutter/material.dart';

class PartyPage extends StatelessWidget {
  static const routeName = '/party';

  const PartyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
      ),
      body: const Center(
        child: Text(
          'Tez kunda................',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
