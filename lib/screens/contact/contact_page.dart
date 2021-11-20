import 'package:flutter/material.dart';

import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'package:thap_mobile/theme/constant.dart';
import 'package:thap_mobile/helpers/helper.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Body(
      context: context,
      appBar: _appbar(context),
      body: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Container(
            width: _width,
            height: _height / 1.25,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: SizedBox(
                      child: Image.asset(
                        'assets/images/qrcode-contact.png',
                        width: _width / 2,
                        height: _height / 4,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    right: 10,
                    left: 30,
                  ),
                  child: Text(
                    "Contact",
                    style: head2,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    right: 10,
                    left: 30,
                  ),
                  child: Text(
                    "pho0m2000s@gmail.com\npho0m tweed\ntel: 080-423-7373",
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
          icon: const Icon(FeatherIcons.chevronLeft),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
