import 'package:dt_app/components/components.dart';
import 'package:dt_app/theme/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../route.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Body(
      context: context,
      haveFAB: true,
      appBar: _appbar(context),
      body: [
        Container(
          width: 300,
          height: 400,
          color: Colors.grey[400],
        ),
      ],
    );
  }

  AppBar _appbar(BuildContext context) {
    return HomeAppBar(
      context: context,
      title: "Contact us",
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
