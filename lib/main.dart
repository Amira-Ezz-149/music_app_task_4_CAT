import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int changePic = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music App'),
      ),
      body: Center(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                padding: EdgeInsets.all(0),
                splashColor: Colors.blue,
                onPressed: () {},
                child: Image(
                  image: AssetImage('images/pic${changePic}.jpeg'),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  Expanded(child: Icon(Icons.replay)),
                  Expanded(child: Icon(Icons.skip_previous)),
                  FlatButton(
                      padding: EdgeInsets.all(15),
                      shape: CircleBorder(),
                      color: Colors.red,
                      onPressed: () {
                        setState(() {
                          changePic = Random().nextInt(4) + 1;
                          print('pic ${changePic} got pressed');
                        });
                      },
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      )),
                  Expanded(child: Icon(Icons.skip_next)),
                  Expanded(child: Icon(Icons.shuffle)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
