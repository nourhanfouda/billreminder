import 'package:flutter/material.dart';
import 'package:pills_reminder/utilities/Colors.dart';

Widget circleDay(day, context, selected) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
        width: 50.0,
        height: 50.0,
        decoration: BoxDecoration(
            color: (selected) ? Theme.of(context).accentColor : Colors.white,
            borderRadius: BorderRadius.circular(100.0)),
        child: Padding(
          padding: EdgeInsets.all(6.0),
          child: Center(
            child: Text(
              day,
              style: TextStyle(color: Colors.black, fontSize: 20.0),
            ),
          ),
        )),
  );
}
