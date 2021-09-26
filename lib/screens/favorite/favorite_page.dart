import 'package:dt_app/theme/constant.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    List<Widget> litems = [
      Card(
        child: ListTile(
          leading: const FlutterLogo(size: 56.0),
          title: const Text('yolo ListTile'),
          subtitle: const Text('Here is a second line'),
          trailing: const Icon(Icons.more_vert),
          onTap: () {},
        ),
      ),
      Card(
        child: ListTile(
          leading: const FlutterLogo(size: 56.0),
          title: const Text('Two-line ListTile'),
          subtitle: const Text('Here is a second line'),
          trailing: const Icon(Icons.more_vert),
          onTap: () {},
        ),
      ),
    ];
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
                  itemCount: litems.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return litems[index];
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
