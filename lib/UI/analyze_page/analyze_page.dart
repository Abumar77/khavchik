import 'package:flutter/material.dart';
import 'package:khavchik/Data/models/food.dart';

import '../../Data/meal_data.dart';
import '../../fluro.dart';
import '../detailed_screen/detailed.dart';

class AnalyzePage extends StatefulWidget {
  static const routeName = '/analyze';

  const AnalyzePage({Key? key, required this.result}) : super(key: key);

  final List<FoodInfo?>? result;

  @override
  _AnalyzePageState createState() => _AnalyzePageState();
}

class _AnalyzePageState extends State<AnalyzePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text('Result of Analysis'),
          backgroundColor: Colors.orangeAccent,
        ),
        body: ListView.builder(
            itemCount: widget.result?.length,
            itemBuilder: (BuildContext context, index) {
              return CustomCard(
                name: '${widget.result?[index]?.name}',
                poster: '${widget.result?[index]?.imageLink}',
                id: widget.result?[index]?.id,
                similarity: widget.result?[index]?.similarProducts,
              );
            }));
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.name,
    required this.id,
    required this.poster,
    required this.similarity,
  }) : super(key: key);

  final String name;
  final int? id;
  final String poster;

  final int? similarity;

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
              child: Image.network(
                '$poster',
                fit: BoxFit.fitWidth,
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontSize: 25),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                    ),
                    onPressed: () {
                      FluroRouterClass.router.navigateTo(
                        context,
                        DetailedPage.routeName,
                        routeSettings: RouteSettings(
                          arguments: top35Meals[id!.toInt()],
                        ),
                      );
                    },
                    child: const Text(
                      'Cook',
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
                  '$similarity similar products you have',
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
