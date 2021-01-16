import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pills_reminder/models/chooseMedmodel.dart';
import 'package:pills_reminder/utilities/Colors.dart';

class Vitaminewedgit extends StatelessWidget {
  Choosedrug imageurl;
  Vitaminewedgit({this.imageurl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 500,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    blurRadius: 9,
                    spreadRadius: 5,
                    offset: Offset(0, 0.9),
                  ),
                ],
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('assets/images/capsules.jpg'),
                          fit: BoxFit.cover),
                    ),
                    width: 100,
                    height: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Nour",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                      Text(
                        "Nour",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                      Text(
                        "time",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: maincolor),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          icon: Icon(Icons.edit),
                          color: maincolor,
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(Icons.delete),
                          color: maincolor,
                          onPressed: () {}),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
