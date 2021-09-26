import 'package:dt_app/theme/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class PlayerPage extends StatefulWidget {
  const PlayerPage({Key? key}) : super(key: key);

  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  // AudioPlayer audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            color: Colors.black,
            icon: const Icon(FeatherIcons.fileText),
            onPressed: () {},
          ),
          IconButton(
            color: Colors.black,
            icon: const Icon(FeatherIcons.heart),
            onPressed: () {},
          ),
          IconButton(
            color: Colors.black,
            icon: const Icon(FeatherIcons.circle),
            onPressed: () {},
          ),
        ],
      ),
      body: _body(
        [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 70),
                Container(
                  width: _width / 1.3,
                  height: _height / 3.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/placeholder-black.jpg'),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                ),
                const SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 60),
                    Column(
                      children: const [
                        Text("Title"),
                        sizeBoxs20,
                        Text("Artist"),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 60),
                const Text("progress bar"),
                const SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      color: Colors.black,
                      icon: const Icon(FeatherIcons.shuffle),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.black,
                      icon: const Icon(FeatherIcons.skipBack),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.black,
                      icon: const Icon(FeatherIcons.play),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.black,
                      icon: const Icon(FeatherIcons.skipForward),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.black,
                      icon: const Icon(FeatherIcons.repeat),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
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
}
