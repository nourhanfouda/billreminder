import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:pills_reminder/widget/CustomAppBar.dart';
import 'package:pills_reminder/widget/CustomDrawer.dart';
import 'package:pills_reminder/widget/choosemedwedgit.dart';
import 'package:pills_reminder/UI/6addmed1.dart';

class ChooseMedType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Customappbar(
        title: translator.translate("AddMed"),
      ),
      drawer: Customdrawer(),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 205,
                      height: 250,
                      child: ListTile(
                        title: ChooseMedWedgit(
                          label: 'assets/images/capsules.jpg',
                          label2: translator.translate('capsules'),
                        ),
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return AddMed();
                          }));
                        },
                      ),
                    ),
                    Container(
                      width: 205,
                      height: 250,
                      child: ListTile(
                        title: ChooseMedWedgit(
                          label: 'assets/images/tablets.jpg',
                          label2: translator.translate('tablets'),
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
                )
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 205,
                      height: 250,
                      child: ListTile(
                        title: ChooseMedWedgit(
                          label: 'assets/images/solution.jpg',
                          label2: translator.translate('solution'),
                        ),
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return AddMed();
                          }));
                        },
                      ),
                    ),
                    Container(
                      width: 205,
                      height: 250,
                      child: ListTile(
                        title: ChooseMedWedgit(
                          label: 'assets/images/inhaler.jpg',
                          label2: translator.translate('inhaler'),
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
                )
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 205,
                      height: 250,
                      child: ListTile(
                        title: ChooseMedWedgit(
                          label: 'assets/images/injections.jpg',
                          label2: translator.translate('injections'),
                        ),
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return AddMed();
                          }));
                        },
                      ),
                    ),
                    Container(
                      width: 205,
                      height: 250,
                      child: ListTile(
                        title: ChooseMedWedgit(
                          label: 'assets/images/creams.jpg',
                          label2: translator.translate('creams'),
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
