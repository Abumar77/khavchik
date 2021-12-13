import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DetailedPage extends StatefulWidget {
  static const routeName = '/detailed';

  const DetailedPage({Key? key}) : super(key: key);

  @override
  _DetailedPageState createState() => _DetailedPageState();
}

class _DetailedPageState extends State<DetailedPage> {
  final List<YoutubePlayerController> _controllers = [
    'oAwguIK9LCg',
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pancake'),
        backgroundColor: Colors.orange,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Column(children: [
            YoutubePlayer(
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
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                    "Pankeyki  Kerakli masaliqlar.  Kefir 1 stakan  Tuhum 1 dona Shakar 2 osh qoshiq Un 1 stakan Soda 0.5 choy qoshiqYog 2 osh qoshiq Tayyorlanishi Kefer bilan sodani aralashtirib  5 minutga qo'yib qo'yamiz. Kottaroq idishga qilamiz kefir ko'pirib chiqadi. Shakar bilan tuhumni yaxshilab aralashtiramiz penka bo'lguncha Azgina azginadan un qo'shamiz. Yaxshilab aralashtiramiz kamochka bo'lmasligi kerak. 2 qoshiq  yog' qo'shamiz va bir hil massa bo'lguncha  aralashtiramiz. Pankeyklarimizni quruq tovoda pishiramiza. Past olovda Qilib ko'ring yoqishi aniq. Yoqimli ishtaxa"),
              ),
            ),
          ]);
        },
        itemCount: _controllers.length,
        separatorBuilder: (context, _) => const SizedBox(height: 10.0),
      ),
    );
  }
}
