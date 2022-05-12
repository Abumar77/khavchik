import 'package:flutter/material.dart';

import '../../Data/meal_data.dart';
import '../../fluro.dart';
import '../detailed_screen/detailed.dart';

class CategoriesScroller extends StatelessWidget {
  const CategoriesScroller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: FittedBox(
            fit: BoxFit.fill,
            alignment: Alignment.topCenter,
            child: Row(children: [
              CustomContainerScroll(
                id: 0,
                text1: getLevel(top35Meals[0].levelOfDifficulty),
                imageLink: '${top35Meals[0].imageLink}',
                mealName: top35Meals[0].name,
                text2: "${top35Meals[0].prepTimeInMinutes} minutes",
              ),
              CustomContainerScroll(
                id: 1,
                text1: getLevel(top35Meals[1].levelOfDifficulty),
                imageLink: '${top35Meals[1].imageLink}',
                mealName: top35Meals[1].name,
                text2: "${top35Meals[1].prepTimeInMinutes} minutes",
              ),
              CustomContainerScroll(
                id: 2,
                text1: getLevel(top35Meals[2].levelOfDifficulty),
                imageLink: '${top35Meals[2].imageLink}',
                mealName: top35Meals[2].name,
                text2: "${top35Meals[2].prepTimeInMinutes} minutes",
              ),
              CustomContainerScroll(
                id: 3,
                text1: getLevel(top35Meals[3].levelOfDifficulty),
                imageLink: '${top35Meals[3].imageLink}',
                mealName: top35Meals[3].name,
                text2: "${top35Meals[3].prepTimeInMinutes} minutes",
              ),
              CustomContainerScroll(
                id: 4,
                text1: getLevel(top35Meals[4].levelOfDifficulty),
                imageLink: '${top35Meals[4].imageLink}',
                mealName: top35Meals[4].name,
                text2: "${top35Meals[4].prepTimeInMinutes} minutes",
              ),
            ])),
      ),
    );
  }

  String getLevel(dynamic level) {
    if (level == 0) {
      return level = "Level: easy";
    } else if (level == 1) {
      return level = "Level: normal";
    } else if (level == 2) {
      return level = "Level: easy";
    } else if (level == 3) {
      return level = "Level: middle";
    } else {
      return level = "Level: expert";
    }
  }
}

class CustomContainerScroll extends StatelessWidget {
  const CustomContainerScroll({
    Key? key,
    required this.id,
    this.categoryHeight,
    required this.imageLink,
    required this.text1,
    this.text2,
    this.mealName,
  }) : super(key: key);

  final int id;
  final String imageLink;
  final String text1;
  final String? text2;

  final String? mealName;
  final double? categoryHeight;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        FluroRouterClass.router.navigateTo(
          context,
          DetailedPage.routeName,
          routeSettings: RouteSettings(
            arguments: top35Meals[id],
          ),
        );
      },
      child: Column(
        children: [
          Container(
            width: 200,
            margin: const EdgeInsets.only(right: 20),
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    imageLink,
                  ),
                  fit: BoxFit.cover,
                ),
                color: Colors.black,
                borderRadius: const BorderRadius.all(Radius.circular(30.0))),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.4),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          text1,
                          style: const TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      text2 != null
                          ? Container(
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  text2!,
                                  style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 15),
            child: Container(
                width: 200,
                child: Text(
                  "$mealName",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                )),
          ),
        ],
      ),
    );
  }
}
