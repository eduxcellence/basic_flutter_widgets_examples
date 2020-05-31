import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

import '2_row_widget.dart';

void main() {
  runApp(MaterialApp(
    home: ListViewDemo(),
    debugShowCheckedModeBanner: false,
  ));
}

class ListViewDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ListViewState();
}

class ListViewState extends State<ListViewDemo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: SafeArea(
      minimum: EdgeInsets.all(1),
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Dismissible(
              child: ListTile(
                  onTap: () {
                    Toast.show("Pressed $index", context,
                        duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
                  },
                  title: Row_Widget_Demo()),
              key: Key(null));
        },
      ),
    ));
  }
}
