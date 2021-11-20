// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

import 'bottom_music_control.dart';

class Body extends StatefulWidget {
  List<Widget> body;
  AppBar appBar;
  final bool haveFAB;
  BuildContext context;

  Body({
    Key? key,
    required this.body,
    required this.appBar,
    required this.context,
    this.haveFAB = false,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext ctx) {
    return widget.haveFAB
        ? Scaffold(
            appBar: widget.appBar,
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: widget.body,
              ),
            ),
            floatingActionButton: BottomMusicControl(context: context),
          )
        : Scaffold(
            appBar: widget.appBar,
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: widget.body,
              ),
            ),
          );
  }
}
