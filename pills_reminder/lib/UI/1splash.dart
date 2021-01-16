import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pills_reminder/UI/2intro.dart';
import 'package:pills_reminder/providers/database_provider.dart';
import 'package:pills_reminder/utilities/Colors.dart';
import 'package:pills_reminder/utilities/style.dart';
import 'package:provider/provider.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Provider.of<Databaseprovider>(context, listen: false).getAlldrugs();
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return Intro();
      }));
    });
    return Scaffold(
      body: Container(
        color: maincolor,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Remindy',
              style: Style.projectname,
            )
          ],
        ),
      ),
    );
  }
}
