import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

/**
 * Created by Akash Kumar  of Eduxcellence on 5/18/2020.
 */
// main function  .....
void main() {
  runApp(MaterialApp(
    home: ButtonWidget(),
    debugShowCheckedModeBanner: false,
  ));
}

class ButtonWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ButtonWidgetState();
}

class ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
          //Center Widgets make sub widget in center
          child: Column(
        //linear layout
        mainAxisAlignment: MainAxisAlignment.center,
        //children widgets in center
        crossAxisAlignment: CrossAxisAlignment.center,
        //children widgets in center
        children: <Widget>[
          Padding(
              //Padding widgets set padding here
              padding: EdgeInsets.all(50.0),
              child: RaisedButton(
                //Raised Button
                child: Text("Press Raised Button"),
                onPressed: () {
                  //Toast Show Here with given message
                  Toast.show("Pressed Raised Button", context,
                      duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
                },
              )),
          Padding(
              //Padding widgets set padding here
              padding: EdgeInsets.all(50.0),
              child: FlatButton(
                //Flat Button
                onPressed: () {
                  //Toast Show Here with given message
                  Toast.show("Pressed Flat Button", context,
                      duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
                },
                child: Text("Press Flat Button"),
              ))
        ],
      )),
    );
  }
}
