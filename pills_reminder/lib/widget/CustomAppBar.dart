import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:pills_reminder/utilities/Colors.dart';

// ignore: must_be_immutable
class Customappbar extends StatelessWidget with PreferredSizeWidget {
  String title;
  Customappbar({this.title});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        translator.translate(title),
        style: TextStyle(color: maincolor, fontSize: 20),
        textAlign: TextAlign.center,
      ),
      titleSpacing: NavigationToolbar.kMiddleSpacing,
      centerTitle: true,
      iconTheme: IconThemeData(color: maincolor),
      elevation: 8,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
