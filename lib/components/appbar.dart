import 'package:flutter/material.dart';

class HomeAppBar extends AppBar {
  static String tag = 'AppBar Component to home screens';

  HomeAppBar({
    Key? key,
    required String title,
    required TextStyle style,
    required List<IconButton> iconButton,
    required BuildContext context,
  }) : super(
          key: key,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: Text(
            title,
            style: style,
          ),
          elevation: 0,
          actions: iconButton,
        );
}
