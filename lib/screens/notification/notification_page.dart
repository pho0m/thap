import 'package:dt_app/components/appbar.dart';
import 'package:dt_app/components/body.dart';
import 'package:dt_app/theme/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../route.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _Notification createState() => _Notification();
}

class _Notification extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Body(
      context: context,
      haveFAB: false,
      appBar: _appbar(context),
      body: [
        Container(
          width: 500,
          height: 500,
          color: Colors.grey[400],
        ),
      ],
    );
  }

  AppBar _appbar(BuildContext context) {
    return HomeAppBar(
      context: context,
      title: "What's new",
      style: head3,
      iconButton: [
        IconButton(
          color: Colors.black,
          icon: const Icon(FeatherIcons.home),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
        ),
        IconButton(
          color: Colors.black,
          icon: const Icon(FeatherIcons.chevronLeft),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
