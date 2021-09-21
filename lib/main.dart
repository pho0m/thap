import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dt-app Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'DT-App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  void _printEvent(String text) {
    setState(() {
      print(text);
    });
  }

  Widget builCalculate(String text1, String text2, String text3) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(0.0),
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                _printEvent(text1);
              },
              child: Text(
                text1,
                style: TextStyle(color: Colors.black),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(0.0),
                backgroundColor: Colors.green
              ),
              onPressed: () {
                _printEvent(text2);
              },
              child: Text(
                text2,
                style: TextStyle(color: Colors.black),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(0.0),
                backgroundColor: Colors.amber
              ),
              onPressed: () {
                _printEvent(text3);
              },
              child: Text(
                text3,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.red,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                builCalculate("7", "4", "1"),
                builCalculate("8", "5", "2"),
                builCalculate("9", "6", "3"),
              ]),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}



/*

                  Text(
                    "4",
                    style: TextStyle(color: Colors.red),
                  ),
                  Text(
                    "5",
                    style: TextStyle(color: Colors.red),
                  ),
                  Text(
                    "6",
                    style: TextStyle(color: Colors.red),
                  ),


                  
                  Text(
                    "7",
                    style: TextStyle(color: Colors.red),
                  ),
                  Text(
                    "8",
                    style: TextStyle(color: Colors.red),
                  ),
                  Text(
                    "9",
                    style: TextStyle(color: Colors.red),
                  ),
*/