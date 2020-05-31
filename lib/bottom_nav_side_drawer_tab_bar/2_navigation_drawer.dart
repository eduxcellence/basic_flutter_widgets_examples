import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NavigationDrawerDemo(),
    debugShowCheckedModeBanner: false,
  ));
}

class NavigationDrawerDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NavigationDrawerState();
}

class NavigationDrawerState extends State<NavigationDrawerDemo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(" Navigation Drawer Example "),
      ),
      body: Container(),
      drawer: ListView(
        dragStartBehavior: DragStartBehavior.start,
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            margin: EdgeInsets.only(right: 25),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Icon(
              Icons.voicemail,
              size: 50,
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
