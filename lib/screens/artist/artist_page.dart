import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'package:dt_app/models/models.dart';
import 'package:dt_app/theme/constant.dart';
import 'package:dt_app/helpers/helper.dart';
import '../route.dart';

class ProfileArtistPage extends StatefulWidget {
  final MusicData music;
  const ProfileArtistPage({
    required this.music,
    Key? key,
  }) : super(key: key);

  @override
  _ProfileArtistPage createState() => _ProfileArtistPage();
}

class _ProfileArtistPage extends State<ProfileArtistPage> {
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
                width: 300,
                height: 200,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image:
                        ExactAssetImage('assets/images/placeholder-black.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        sizeBoxs20,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text(
              "History",
              style: TextStyle(fontSize: 30.0),
            )
          ],
        ),
        sizeBoxs20,
        Center(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.grey[300],
                ),
                width: 350,
                height: 375,
                child: ListView(
                  children: [
                    //Text(mockData.dataArtist),
                  ],
                ),
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
