// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

import 'music_bar_fab.dart';

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
    required this.haveFAB,
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
            floatingActionButton: MusicBar(context: context),
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
