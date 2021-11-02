import 'package:dt_app/screens/route.dart';
import 'package:dt_app/theme/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const DTapp());
}

class DTapp extends StatelessWidget {
  const DTapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp(
      theme: ThemeData(
        fontFamily: dtFontFamily,
        primarySwatch: dtPrimaryColor,
        textTheme: textTheme,
      ),
      home: const HomePage(),
    );
  }
}
