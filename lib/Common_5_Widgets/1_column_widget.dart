import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// main() function calls

void main() {
  // calling runApp()

  runApp(MaterialApp(
    home: ColumnWidgetDemo(),
    debugShowCheckedModeBanner: false,
  ));
}

class ColumnWidgetDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ColumnWidgetState();
}

class ColumnWidgetState extends State<ColumnWidgetDemo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Padding(padding: EdgeInsets.all(55)),
            Text(
              "Column Widget 1",
              style: TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.none,
                  color: Colors.lightGreen),
            ),
            Text(
              "Column Widget 2",
              style: TextStyle(
                  fontSize: 40,
                  decoration: TextDecoration.none,
                  backgroundColor: Colors.amber,
                  color: Colors.lightGreen),
            ),
            Icon(
              Icons.ac_unit,
              size: 45,
            ),
            Text(
              "Column Widget 4",
              style: TextStyle(
                  backgroundColor: Colors.amber, color: Colors.lightGreen),
            ),
            Text(
              "Column Widget 5",
              style: TextStyle(
                  fontSize: 20,
                  backgroundColor: Colors.amber,
                  color: Colors.lightGreen),
            ),
            Text(
              "Column Widget 6",
              style: TextStyle(
                  backgroundColor: Colors.amber, color: Colors.lightGreen),
            ),
            Text(
              "Column Widget 7",
              style: TextStyle(
                  backgroundColor: Colors.amber, color: Colors.lightGreen),
            ),
            Text(
              "Column Widget 8",
              style: TextStyle(
                  backgroundColor: Colors.amber, color: Colors.lightGreen),
            ),
            Padding(padding: EdgeInsets.all(55)),
          ],
        ));
  }
}
