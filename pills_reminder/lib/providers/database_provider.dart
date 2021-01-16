import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:pills_reminder/models/drug_model.dart';
import 'package:pills_reminder/services/db_helper.dart';

class Databaseprovider extends ChangeNotifier {
  List<Drugmodel> drugmodel = [];
  List<Drugmodel> medicine = [];
  List<Drugmodel> vitamine = [];

  fillLists(List<Drugmodel> drugmodell) {
    this.drugmodel = drugmodell;
    this.medicine = drugmodel.where((element) => element.isMedicine).toList();
    this.vitamine = drugmodel.where((element) => !element.isMedicine).toList();
    notifyListeners();
  }

  insertNewdrug(Drugmodel drugmodel) async {
    await DBHelper.dbHelper.insertNewdrug(drugmodel);
    getAlldrugs();
  }

  getAlldrugs() async {
    List<Map<String, dynamic>> rows = await DBHelper.dbHelper.selectAlldrugs();
    List<Drugmodel> drugs = rows.map((e) => Drugmodel.fromMap(e)).toList();
    fillLists(drugs);
  }

  updatedrug(Drugmodel drugmodel) async {
    await DBHelper.dbHelper.updateDrug(drugmodel);
    getAlldrugs();
  }

  deletedrug(Drugmodel drugmodel) async {
    await DBHelper.dbHelper.deletedrug(drugmodel.id);
    getAlldrugs();
  }
}
