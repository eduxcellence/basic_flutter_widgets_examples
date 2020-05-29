import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: StackWidgetDemo(),
    debugShowCheckedModeBanner: false,
  ));
}

class StackWidgetDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StackWidgetState();
}

class StackWidgetState extends State<StackWidgetDemo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: SizedBox(
            height: 150,
            child: Stack(
              children: <Widget>[
                Container(
                  height: 250,
                  color: Colors.white,
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Colors.black.withAlpha(0),
                        Colors.black12,
                        Colors.black45
                      ],
                    ),
                  ),
                  child: Text(
                    "Foreground Text",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              ],
            )));
  }
}
