import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:pills_reminder/UI/5addmed.dart';
import 'package:pills_reminder/UI/6addmed1.dart';
import 'package:pills_reminder/utilities/Colors.dart';
import 'package:pills_reminder/widget/CustomAppBar.dart';
import 'package:pills_reminder/widget/CustomDrawer.dart';

class Add extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Customappbar(
        title: 'REMINDY',
      ),
      drawer: Customdrawer(),
      body: Padding(
        padding: const EdgeInsets.only(top: 170.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ListTile(
                    title: Container(
                      width: 150,
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              blurRadius: 9,
                              spreadRadius: 5,
                              offset: Offset(0, 0.9),
                            )
                          ],
                          borderRadius: BorderRadius.circular(7)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/images/add.jpg'),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                translator.translate("AddMed"),
                                style: TextStyle(
                                  fontSize: 25,
                                  color: maincolor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ]),
                    ),
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return ChooseMedType();
                      }));
                    },
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: Container(
                      width: 150,
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              blurRadius: 9,
                              spreadRadius: 5,
                              offset: Offset(0, 0.9),
                            )
                          ],
                          borderRadius: BorderRadius.circular(7)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/add1.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              translator.translate("Addvit"),
                              style: TextStyle(
                                fontSize: 25,
                                color: maincolor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return AddMed();
                      }));
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
