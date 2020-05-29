import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(debugShowCheckedModeBanner: false, home: Row_Widget_Demo()));
}

class Row_Widget_Demo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Row_Widget_State();
}

class Row_Widget_State extends State<Row_Widget_Demo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.ac_unit,
          size: 45,
          color: Colors.amber,
        ),
        Card(
            elevation: 4,
            child: Container(
              padding: EdgeInsets.all(6),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 110,
                    width: 90,
                    child: Image.network(
                      'https://picsum.photos/250?image=9',
                      // 'https://placeimg.com/250/250/any',
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        MergeSemantics(
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
                        ),
                        SizedBox(height: 5),
                        Text(
                          'The overflowing RenderFlex has an orientation of Axis.horizontal.',
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '₹ 10,000',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),
      ],
    );
  }
}
