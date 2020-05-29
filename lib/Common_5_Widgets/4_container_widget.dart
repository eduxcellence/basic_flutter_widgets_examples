import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ContainerWidgetDemo(),
    debugShowCheckedModeBanner: false,
  ));
}

class ContainerWidgetDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ContainerWidgetState();
}

class ContainerWidgetState extends State<ContainerWidgetDemo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(
            child: Container(
      margin: EdgeInsets.all(25),
      padding: EdgeInsets.all(25),
      height: 100.0,
      child: Row(
        children: <Widget>[
          Icon(
            Icons.crop_square,
            color: Colors.red,
            size: 18,
          ),
          Flexible(
            child: Text(
              'The overflowing RenderFlex has an orientation of Axis.horizontal.',
              overflow: TextOverflow.ellipsis,
              softWrap: true,
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor),
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.deepPurpleAccent, Colors.indigoAccent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
                color: Colors.deepOrange,
                blurRadius: 15,
                spreadRadius: 5,
                offset: Offset(0, 13)),
          ]),
    )));
  }
}
