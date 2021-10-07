import 'package:dt_app/components/components.dart';
import 'package:dt_app/theme/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../route.dart';

class ProfileArtist extends StatefulWidget {
  const ProfileArtist({Key? key}) : super(key: key);

  @override
  _ProfileArtist createState() => _ProfileArtist();
}

class _ProfileArtist extends State<ProfileArtist> {
  @override
  Widget build(BuildContext context) {
    return Body(
      context: context,
      haveFAB: false,
      appBar: _appbar(context),
      body: [
        sizeBoxs10,
        Center(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                width: 200,
                height: 200,
                child: const Center(child: Text("image")), //FIXME,
              ),
            ],
          ),
        ),
        sizeBoxs20,
        Center(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.green,
                ),
                width: 350,
                height: 450,
                child: const Text(
                    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout."),
              ),
            ],
          ),
        )
      ],
    );
  }

  AppBar _appbar(BuildContext context) {
    return HomeAppBar(
      context: context,
      title: "ArtistProfile",
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
