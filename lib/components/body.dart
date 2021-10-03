// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  List<Widget> body;
  AppBar appBar;

  Body({
    Key? key,
    required this.body,
    required this.appBar,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
