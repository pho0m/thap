import 'package:thap_mobile/screens/route.dart';
import 'package:thap_mobile/theme/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

void main() => runApp(const ThapMobile());

class ThapMobile extends StatefulWidget {
  const ThapMobile({Key? key}) : super(key: key);

  @override
  _ThapMobileState createState() => _ThapMobileState();
}

class _ThapMobileState extends State<ThapMobile> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: (5)),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: dtFontFamily,
        primarySwatch: dtPrimaryColor,
        textTheme: textTheme,
      ),
      home: Scaffold(
        body: Center(
          child: Builder(
            builder: (context) => Lottie.asset(
              'assets/lottie/music-loader.json',
              controller: _controller,
              height: 500,
              animate: true,
              onLoaded: (composition) {
                _controller
                  ..duration = composition.duration
                  ..forward().whenComplete(() => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      ));
              },
            ),
          ),
        ),
      ),
    );
  }
}
