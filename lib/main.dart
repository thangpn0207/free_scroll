import 'package:flutter/material.dart';
import 'package:free_scroll/lib.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    //_plugin.offset = new Offset(10.0, 10.0); // use this method to set a new offset where appropriate
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('test'),
        ),
        body: Center(
            child: FreeScrollView(
          child: Container(
            height: 2000,
            width: 2000,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.white, Colors.red])),
            child: Center(
              child: Container(
                height: 10,
                width: 20,
                color: Colors.amberAccent,
              ),
            ),
          ),
        )),
      ),
    );
  }
}
