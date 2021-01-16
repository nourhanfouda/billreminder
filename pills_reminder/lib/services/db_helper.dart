import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pills_reminder/models/drug_model.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  DBHelper._();
  static DBHelper dbHelper = DBHelper._();
  static final String databasename = 'billreminder.db';
  static final String tablename = 'reminder';
  static final String drugidcolumnname = 'drugid';
  static final String drugnamecolumnname = 'drugname';
  static final String drugdosecolumnname = 'drugdose';
  static final String drugdatecolumnname = 'drugdate';
  static final String drugtimecolumnname = 'drugtime';
  static final String drugIsMedicineColumnName = 'isComplete';

  Database database;
  initializeBillreminderDatabase() async {
    if (database == null) {
      database = await connectToDataBase();
    }
  }

  Future<Database> connectToDataBase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String databasePath = join(directory.path, 'billreminder.db');
    Database database = await openDatabase(
      databasePath,
      version: 2,
      onCreate: (db, version) {
        createbillTable(db, version);
      },
    );
    return database;
  }

  createbillTable(Database database, int version) {
    database.execute('''CREATE TABLE $tablename(
$drugidcolumnname INTEGER PRIMARY KEY AUTOINCREMENT,
$drugnamecolumnname TEXT NOT NULL,
$drugdosecolumnname TEXT NOT NULL,
$drugdatecolumnname INTEGER,
$drugtimecolumnname TEXT,
$drugIsMedicineColumnName INTEGER NOT NULL
)''');
  }

  insertNewdrug(Drugmodel drugmodel) async {
    try {
      int result = await database.insert(tablename, drugmodel.toMap());
      print(result);
    } on Exception catch (e) {
      print(e);
    }
  }

  Future<List<Map<String, dynamic>>> selectAlldrugs() async {
    try {
      List<Map<String, dynamic>> allRows = await database.query(tablename);
      return allRows;
    } on Exception catch (e) {
      print(e);
    }
  }

  getOnedrug(int id) async {
    try {
      List<Map<String, dynamic>> result = await database
          .query(tablename, where: '$drugidcolumnname=?', whereArgs: [id]);
    } on Exception catch (e) {
      // TODO
    }
  }

  deletedrug(int id) async {
    database.delete(tablename, where: '$drugidcolumnname=?', whereArgs: [id]);
  }

  updateDrug(Drugmodel drugmodel) async {
    drugmodel.isMedicine = !drugmodel.isMedicine;
    database.update(tablename, drugmodel.toMap(),
        where: '$drugidcolumnname=?', whereArgs: [drugmodel.id]);
  }

  deleteAlldrugs() async {
    database.delete(tablename);
  }
}
