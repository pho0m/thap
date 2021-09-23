import 'package:flutter/material.dart';


class Screens extends StatelessWidget {
  const Screens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:  Scaffold(
      appBar: AppBar(title: Text("test"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text("page 2"),
              ),
            ],
          ),
        ),
      ),);
      
    
  }
}