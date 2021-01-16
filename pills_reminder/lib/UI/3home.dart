import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:pills_reminder/UI/4add.dart';
import 'package:pills_reminder/providers/database_provider.dart';
import 'package:pills_reminder/utilities/Colors.dart';
import 'package:pills_reminder/widget/CustomAppBar.dart';
import 'package:pills_reminder/widget/CustomDrawer.dart';
import 'package:pills_reminder/widget/medicinewidgit.dart';
import 'package:pills_reminder/widget/vitamiewedgit.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'REMINDY',
            style: TextStyle(
              color: maincolor,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          iconTheme: IconThemeData(color: maincolor),
          elevation: 8,
          bottom: TabBar(tabs: [
            Tab(
              child: Text(
                translator.translate('med'),
                style: TextStyle(
                  color: maincolor,
                  fontSize: 20,
                ),
              ),
            ),
            Tab(
              child: Text(
                translator.translate('vit'),
                style: TextStyle(
                  color: maincolor,
                  fontSize: 20,
                ),
              ),
            ),
          ]),
        ),
        drawer: Customdrawer(),
        body: Consumer<Databaseprovider>(
          builder: (context, value, child) {
            return TabBarView(children: [
              Column(
                children: value.medicine.map((e) => Medicinewedgit()).toList(),
              ),
              Column(
                children: value.vitamine.map((e) => Medicinewedgit()).toList(),
              )
            ]);
          },
        ),

        // body: Container(
        //   decoration: BoxDecoration(
        //       color: Colors.white,
        //       shape: BoxShape.rectangle,
        //       image: DecorationImage(
        //           image: AssetImage('assets/images/home.png'),
        //           fit: BoxFit.contain)),
        //   child: Center(
        //     child: Padding(
        //       padding: const EdgeInsets.only(bottom: 150),
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.end,
        //         children: [
        //           Text(
        //             translator.translate('Home'),
        //             style: TextStyle(
        //                 color: Colors.black26,
        //                 fontSize: 20,
        //                 fontStyle: FontStyle.italic),
        //           )
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: maincolor,
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Add();
            }));
          },
        ),
      ),
      length: 2,
    );
  }
}
