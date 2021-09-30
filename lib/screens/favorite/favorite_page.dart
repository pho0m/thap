import 'package:dt_app/theme/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class FavoritePage extends StatelessWidget {
  FavoritePage({Key? key}) : super(key: key);

  final List<Map> music = List.generate(
    21, //0 1 2 3 4 5 6 7 8 9 10 11 12
    (index) => {
      "id": index + 1,
      "title": "title ${index + 1}",
      "artist": "artist ${index + 1}",
    },
  ).toList();

  final List<Map> mockData = [
    {"id": "1", "title": "if you shy", "artist": "1975"},
    {"id": "2", "title": "เนื้อของฉัน", "artist": "ยังกู"},
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
                  itemCount: mockData.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return Card(
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
                        title: Text(mockData[index]['title']),
                        subtitle: Text(mockData[index]['artist']),
                        // trailing: const Icon(Icons.more_vert),
                        onTap: () {},
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
