import 'package:dt_app/theme/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class PlaylistPage extends StatefulWidget {
  const PlaylistPage({Key? key}) : super(key: key);

  @override
  State<PlaylistPage> createState() => _PlaylistPage();
}

class _PlaylistPage extends State<PlaylistPage> {
  final List<Map> music =
      List.generate(20, (index) => {"id": index, "name": "Noresult $index"})
          .toList();
  // final List<Widget> mockPlList = [];
  //   Container(
  //     padding: const EdgeInsets.all(8),
  //     child: const Text("He'd have you all unravel at the"),
  //     color: Colors.teal[100],
  //   ),
  //   Container(
  //     padding: const EdgeInsets.all(8),
  //     child: const Text('Heed not the rabble'),
  //     color: Colors.teal[200],
  //   ),
  //   Container(
  //     padding: const EdgeInsets.all(8),
  //     child: const Text('Sound of screams but the'),
  //     color: Colors.teal[300],
  //   ),
  //   Container(
  //     padding: const EdgeInsets.all(8),
  //     child: const Text('Who scream'),
  //     color: Colors.teal[400],
  //   ),
  //   Container(
  //     padding: const EdgeInsets.all(8),
  //     child: const Text('Revolution is coming...'),
  //     color: Colors.teal[500],
  //   ),
  //   Container(
  //     padding: const EdgeInsets.all(8),
  //     child: const Text('Revolution, they...'),
  //     color: Colors.teal[600],
  //   ),
  //   Container(
  //     padding: const EdgeInsets.all(8),
  //     child: const Text('Empty'),
  //     color: Colors.teal[600],
  //   ),
  //   Container(
  //     padding: const EdgeInsets.all(8),
  //     child: const Text('Emty'),
  //     color: Colors.teal[600],
  //   ),
  //   Container(
  //     padding: const EdgeInsets.all(8),
  //     child: const Text('Mty'),
  //     color: Colors.teal[600],
  //   ),

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar(_width),
      body: _body([
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(15),
          ),
          height: 700,
          width: _width - 30,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: music.length,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                height: 10,
                width: 10,
                alignment: Alignment.center,
                child: Text(
                  music[index]["name"],
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(15),
                ),
              );
            },
          ),
        )
      ]

          // _body(
          //   [
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //     ),
          //     Container(
          //       padding: const EdgeInsets.all(8),
          //       height: 300,
          //       width: _width - 30,
          //       child: GridView.count(
          //         primary: false,
          //         padding: const EdgeInsets.all(20),
          //         crossAxisSpacing: 10,
          //         mainAxisSpacing: 10,
          //         crossAxisCount: 3,
          //         children: mockPlList,
          //       ),
          //     ),
          //   ],
          // ),
          ),
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

  AppBar appBar(double width) {
    return AppBar(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      title: const Text(
        "PlayList",
        style: head3,
      ),
      elevation: 0,
      actions: [
        IconButton(
          color: Colors.black,
          icon: const Icon(FeatherIcons.circle),
          onPressed: () {},
        ),
      ],
    );
  }
}
