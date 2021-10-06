import 'package:dt_app/components/components.dart';
import 'package:dt_app/theme/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

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
      haveFAB: true,
      appBar: _appbar(context),
      body: [sizeBoxs10, Column()],
    );
  }

  AppBar _appbar(BuildContext context) {
    return HomeAppBar(
      context: context,
      title: "Playlist Page",
      style: head3,
      iconButton: [
        IconButton(
          color: Colors.black,
          icon: const Icon(FeatherIcons.circle),
          onPressed: () {
            print("Hello");
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
