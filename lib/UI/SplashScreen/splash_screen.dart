import 'dart:async';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../Business/constants.dart';
import '../../Data/preference_service.dart';
import '../../fluro.dart';
import '../LoginScreen/login_screen.dart';
import '../home_page.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "/splash-screen";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late VideoPlayerController _vController;
  @override
  void initState() {
    super.initState();

    _vController = VideoPlayerController.asset("assets/anim.mp4")
      ..initialize().then((_) {
        setState(() {});
      })
      ..setVolume(0.0);
    _playVideo();
  }

  @override
  void dispose() {
    _vController.dispose();
    super.dispose();
  }

  void _playVideo() async {
    _vController.play();

    await Future.delayed(const Duration(seconds: 5));

    String? token = await PreferencesService().getString(TOKEN);
    if (token == null || token.isEmpty) {
      FluroRouterClass.router.navigateTo(
        context,
        LoginScreen.routeName,
      );
    } else {
      FluroRouterClass.router.navigateTo(
        context,
        MyHomePage.routeName,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: _vController.value.isInitialized
            ? AspectRatio(
                aspectRatio: _vController.value.aspectRatio,
                child: VideoPlayer(_vController),
              )
            : Container(),
      ),
    );
  }
}
