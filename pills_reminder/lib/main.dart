import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:pills_reminder/UI/1splash.dart';
import 'package:pills_reminder/providers/database_provider.dart';
import 'package:pills_reminder/services/db_helper.dart';
import 'package:pills_reminder/widget/medicinewidgit.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DBHelper.dbHelper.initializeBillreminderDatabase();
  await DBHelper.dbHelper.connectToDataBase();
  await translator.init(
    localeDefault: LocalizationDefaultType.device,
    languagesList: <String>['ar', 'en'],
    assetsDirectory: 'assets/langs/',
  );
  runApp(LocalizedApp(child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Databaseprovider>(
      create: (context) {
        return Databaseprovider();
      },
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Remindy',
        home: Splash(),
        localizationsDelegates: translator.delegates, // Android + iOS Delegates
        locale: translator.locale, // Active locale
        supportedLocales: translator.locals(),
      ),
    );
  }
}
