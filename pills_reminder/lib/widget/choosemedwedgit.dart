import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:pills_reminder/utilities/Colors.dart';
import 'package:pills_reminder/UI/6addmed1.dart';

class ChooseMedWedgit extends StatelessWidget {
  ChooseMedWedgit({this.label, this.label2});
  String label;
  String label2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Center(
        child: Container(
          width: 205,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 9,
                spreadRadius: 5,
                offset: Offset(0, 0.9),
              )
            ],
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(label), fit: BoxFit.cover)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  label2,
                  style: TextStyle(
                      color: maincolor,
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
