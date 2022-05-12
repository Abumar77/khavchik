import 'package:flutter/material.dart';
import 'package:khavchik/Data/models/food.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DetailedPage extends StatelessWidget {
  static const routeName = '/detailed';

  DetailedPage({
    Key? key,
    required this.foodInfo,
  }) : super(key: key);

  final FoodInfo foodInfo;

  @override
  Widget build(BuildContext context) {
    final List<YoutubePlayerController> _controllers = [
      foodInfo.videoLink.toString(),
    ]
        .map<YoutubePlayerController>(
          (videoId) => YoutubePlayerController(
            initialVideoId: videoId,
            flags: const YoutubePlayerFlags(
              autoPlay: false,
            ),
          ),
        )
        .toList();

    void _launchUrl(dynamic url) async {
      if (!await launchUrl(url)) throw 'Could not launch $url';
    }

    final sizeScreen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(foodInfo.name.toString()),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 50.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        foodInfo.name.toString(),
                        style: const TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                      OutlinedButton(
                        onPressed: () {
                          _launchUrl(
                              Uri.parse(foodInfo.authorsContact.toString()));
                        },
                        child: Text('by ${foodInfo.authorsName.toString()}'),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.people_rounded),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                                Text("Servings: ${foodInfo.servings} people"),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.timer_sharp),
                          Text(
                            "Cooking time: ${foodInfo.prepTimeInMinutes.toString()} minutes",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: NetworkImage(
                          "${foodInfo.imageLink}",
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: Center(
                        child: Text(
                      "Description:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(40.0),
                        ),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Center(
                          child: Text(
                        "${foodInfo.description}",
                        style: const TextStyle(fontSize: 16),
                      )),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: Center(
                        child: Text(
                      "Ingredients:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    )),
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                          border: Border.all(color: Colors.orange)),
                      height: 400,
                      child: SingleChildScrollView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: foodInfo.ingredient?.length,
                            itemBuilder: (BuildContext context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(left: 18.0),
                                child: ListTile(
                                  title: Text(
                                    "${foodInfo.ingredient?[index]?.name?.toUpperCase()}",
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: foodInfo
                                              .ingredient?[index]?.quantity !=
                                          null
                                      ? Text(
                                          "quantity: ${foodInfo.ingredient?[index]?.quantity}")
                                      : const Text(
                                          "With own preferred quantity"),
                                ),
                              );
                            }),
                      )),
                ],
              ),
            ),
            foodInfo.negativeToIllnesses != null
                ? Padding(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      children: [
                        const Text(
                          "Not Recommended for people with illness's:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                  border: Border.all(color: Colors.red)),
                              height: 100,
                              child: SingleChildScrollView(
                                physics: const AlwaysScrollableScrollPhysics(),
                                child: ListView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount:
                                        foodInfo.negativeToIllnesses?.length,
                                    itemBuilder: (BuildContext context, index) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(left: 18.0),
                                        child: ListTile(
                                          title: Text(
                                            "${foodInfo.negativeToIllnesses?[index]?.name?.toUpperCase()}",
                                            style: const TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      );
                                    }),
                              )),
                        ),
                      ],
                    ),
                  )
                : const SizedBox(),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Center(
                  child: Text(
                "Instructions:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
            ),
            SingleChildScrollView(
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 40),
                      width: sizeScreen.width - 50,
                      child: YoutubePlayer(
                        key: ObjectKey(_controllers[index]),
                        controller: _controllers[index],
                        actionsPadding: const EdgeInsets.only(left: 16.0),
                        bottomActions: [
                          CurrentPosition(),
                          const SizedBox(width: 10.0),
                          ProgressBar(isExpanded: true),
                          const SizedBox(width: 10.0),
                          RemainingDuration(),
                          FullScreenButton(),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Center(
                        child: Text(
                          foodInfo.instructions.toString(),
                          style: const TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ]);
                },
                itemCount: _controllers.length,
                separatorBuilder: (context, _) => const SizedBox(height: 10.0),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: TextButton(
                onPressed: () {
                  _launchUrl(Uri.parse(foodInfo.websiteLink.toString()));
                },
                child: const Text('visit official web-cite'),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
