import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'package:dt_app/theme/constant.dart';
import 'package:dt_app/helpers/helper.dart';
import 'package:dt_app/mock/mock.dart';
import '../route.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AppBar _appbar(BuildContext context) {
    return HomeAppBar(
      context: context,
      title: 'Music Explorer',
      style: head3,
      iconButton: [
        IconButton(
          color: Colors.black,
          icon: const Icon(FeatherIcons.bell),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const NotificationPage(),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget nowPlaying() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.15),
        ),
        color: Colors.grey[300],
        child: ListTile(
          leading: const Icon(
            FeatherIcons.headphones,
            size: 40.0,
          ),
          // leading: const FlutterLogo(size: 56.0),
          title: Text(
            mockAllMusData[0].title,
            style: head4,
          ),
          subtitle: Text(
            mockAllMusData[0].artist,
            style: sub1,
          ),
          onTap: () {},
        ),
      ),
    );
  }

  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text(
              'Are you sure?',
              style: head3,
            ),
            content: const Text(
              'Do you want to exit an App',
              style: head4,
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('No'),
              ),
              TextButton(
                onPressed: () => exit(0),
                child: const Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    Widget playlist() {
      return GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const PlaylistPage()));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: ShadowText(
                style: head3,
                data: 'Playlist',
                opacity: 0.2,
                maxLines: 2,
                minFontSize: 10,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            sizeBoxs5,
            SizedBox(
              width: _width / 2.2,
              height: _height / 5,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Colors.grey[300],
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PlaylistPage(),
                      ),
                    );
                  },
                  child: const SizedBox(
                    child: Icon(
                      FeatherIcons.list,
                      size: 50.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget favorite() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 5.0),
            child: ShadowText(
              style: head3,
              data: 'Favorite',
              opacity: 0.2,
              maxLines: 2,
              minFontSize: 10,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          sizeBoxs5,
          SizedBox(
            width: _width / 2.2,
            height: _height / 5,
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Colors.grey[300],
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FavoritePage(),
                      ),
                    );
                  },
                  child: const SizedBox(
                    child: Icon(
                      Icons.favorite,
                      color: Colors.black,
                      size: 50.0,
                    ),
                  ),
                )),
          ),
        ],
      );
    }

    return DefaultTextStyle(
      style: const TextStyle(color: Colors.black),
      child: WillPopScope(
        onWillPop: _onWillPop,
        child: Body(
          haveFAB: false,
          context: context,
          appBar: _appbar(context),
          body: [
            ImageContent(imageData: imagePlaceholder),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    playlist(),
                    favorite(),
                  ],
                ),
              ),
            ),
            sizeBoxs20,
            MusicCard(
              height: _height,
              width: _width,
              music: mockAllMusData,
              styletitle: head4,
              stylesuptitle: head5,
            ),
            sizeBoxs100,
          ],
        ),
      ),
    );
  }
}
