// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

import 'music_bar_fab.dart';

class Body extends StatefulWidget {
  List<Widget> body;
  AppBar appBar;
  bool haveFAB;
  BuildContext context;

  Body({
    Key? key,
    required this.body,
    required this.appBar,
    required this.haveFAB,
    required this.context,
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
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: widget.body,
                ),
              ),
            ),
            floatingActionButton: MusicBar(context: context))
        : Scaffold(
            appBar: widget.appBar,
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: widget.body,
                ),
              ),
            ),
          );
  }
}
