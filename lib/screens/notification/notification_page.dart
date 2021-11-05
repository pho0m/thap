import 'package:dt_app/components/appbar.dart';
import 'package:dt_app/components/body.dart';
import 'package:dt_app/screens/contact_us/contact_us.dart';
import 'package:dt_app/theme/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Body(
      context: context,
      haveFAB: true,
      appBar: _appbar(context),
      body: [
        const Padding(
          padding: EdgeInsets.only(
            top: 20.0,
            right: 180.0,
          ),
          child: Text("New Update"),
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            width: 330,
            height: 180,
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  "-Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "),
            ),
          ),
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
          icon: const Icon(FeatherIcons.trello),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ContactUsPage(),
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
