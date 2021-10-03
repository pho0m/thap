import 'package:dt_app/theme/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../route.dart';

class FavoritePage extends StatelessWidget {
  FavoritePage({Key? key}) : super(key: key);
  final List<MusicData> mockMusicData = [
    MusicData(
      title: "if you shy (let me knows)",
      artist: "1975",
      image:
          "https://images.squarespace-cdn.com/content/v1/56858337cbced60d3b293aef/1572288107885-V2AZJF8YVG5NARZRU7YE/Albumism_The1975_ABriefInquiryIntoOnlineRelationships_MainImage.png.jpg?format=1000w",
    ),
    MusicData(
      title: "cheapest flight",
      artist: "PERP",
      image:
          "https://i1.sndcdn.com/artworks-YTJNfuXwL5a59d4E-xezZzw-t500x500.jpg",
    ),
  ];

/*

{
  "id": index, 0
  "title": "title $index", title 0
},
{
  "id": index, 1
  "title": "title $index", title 1
},
{  |key|  |value|
  "id": index, 2
  "title": "title $index", title 2    //JSON    .json
},

*/

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Favorite Page",
          style: head3,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: _body([
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: _width,
                height: _height,
                child: ListView.builder(
                  itemCount: mockMusicData.length,
                  itemBuilder: (BuildContext ctxt, int idx) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                        top: 5.0,
                        right: 15.0,
                        bottom: 5.0,
                      ),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.15),
                        ),
                        color: CupertinoColors.extraLightBackgroundGray,
                        child: ListTile(
                          leading: const Icon(
                            FeatherIcons.headphones,
                            size: 40.0,
                          ),
                          // leading: const FlutterLogo(size: 56.0),
                          title: Text(
                            mockMusicData[idx].title,
                            style: head4,
                          ),
                          subtitle: Text(
                            mockMusicData[idx].artist,
                            style: sub1,
                          ),
                          // trailing: const Icon(Icons.more_vert),
                          onTap: () {},
                        ),
                      ),
                    );
                  },
                ),
              ),
              // const Text("Favorite Page"),
              // const SizedBox(
              //   height: 20,
              // ),
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.pop(context);
              //   },
              //   child: const Text('Go back!'),
              // ),
            ],
          ),
        )
      ]),
    );
  }

  Widget _body(List<Widget> inhome) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: inhome,
        ),
      ),
    );
  }
}
