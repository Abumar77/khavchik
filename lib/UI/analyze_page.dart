import 'package:flutter/material.dart';

import '../fluro.dart';

class AnalyzePage extends StatefulWidget {
  static const routeName = '/analyze';

  const AnalyzePage({Key? key}) : super(key: key);

  @override
  _AnalyzePageState createState() => _AnalyzePageState();
}

class _AnalyzePageState extends State<AnalyzePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Natija'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: ListView(
        children: const [
          CustomCard(
            name: 'Pancake',
            poster: 'pancake.png',
            uuid: "1",
            similarity: '98%',
          ),
          CustomCard(
            name: 'Kartoshka palov',
            poster: '5.png',
            uuid: "1",
            similarity: '76%',
          ),
          CustomCard(
            name: 'Svekolnik',
            poster: '6.png',
            uuid: "1",
            similarity: '65%',
          ),
          CustomCard(
            name: 'Nuhat shurak',
            poster: '7.png',
            uuid: "1",
            similarity: '45%',
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.name,
    required this.poster,
    required this.uuid,
    required this.similarity,
  }) : super(key: key);

  final String name;
  final String poster;
  final String uuid;
  final String similarity;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Container(
        height: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 4,
              child: Image.asset(
                'assets/$poster',
                fit: BoxFit.fitWidth,
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '$name',
                    style: TextStyle(fontSize: 25),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                    ),
                    onPressed: () {
                      FluroRouterClass.router.navigateTo(
                        context,
                        '/detailed',
                      );
                    },
                    child: const Text(
                      'Tayyorlash',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  '$similarity masalliglar bor',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ],
        ),
      ),
      // title: Text(hotel.poster),
      // subtitle: Text(hotel.name),
    );
  }
}
