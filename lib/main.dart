import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    final pages=[
      Container(color: Colors.red,),
      Container(color: Colors.orange,),
      Container(color: Colors.green,),
      Container(color: Colors.greenAccent,),
      Container(color: Colors.grey,),

    ];

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            leading: Icon(Icons.menu),
            centerTitle: true,
            title: Text("Swipe Page"),
            actions: [
              Icon(Icons.settings)
            ],
          ),

          body: LiquidSwipe(pages: pages,) ,
        ),
      ),
    );
  }
}

