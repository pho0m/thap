import 'package:flutter/material.dart';

import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'package:dt_app/theme/constant.dart';
import 'package:dt_app/helpers/helper.dart';
import '../route.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Body(
      context: context,
      haveFAB: false,
      appBar: _appbar(context),
      body: [
        Padding(
          padding: const EdgeInsets.only(
            right: 40,
            left: 40,
          ),
          child: Container(
            width: 400,
            height: 600,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Image.asset(
                    'assets/images/qrcode-contact.png',
                    cacheHeight: 150,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 130),
                  child: Text(
                    "Contact",
                    style: head2,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 80),
                  child: Text(
                    "Phoom : 0987654321",
                    style: sub1,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    right: 10,
                    left: 30,
                  ),
                  child: Text(
                    "address :  is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only",
                    style: sub1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  AppBar _appbar(BuildContext context) {
    return HomeAppBar(
      context: context,
      title: "",
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
