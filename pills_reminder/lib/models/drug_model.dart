import 'package:pills_reminder/services/db_helper.dart';

class Drugmodel {
  String drugname;
  String drugdose;
  int date;
  String time;
  int id;
  bool isMedicine;
  Drugmodel(
      {this.id,
      this.drugname,
      this.drugdose,
      this.time,
      this.date,
      this.isMedicine});
  Drugmodel.fromMap(Map map) {
    this.id = map[DBHelper.drugidcolumnname];
    this.drugname = map[DBHelper.drugnamecolumnname];
    this.drugdose = map[DBHelper.drugdosecolumnname];
    this.date = map[DBHelper.drugdatecolumnname];
    this.time = map[DBHelper.drugtimecolumnname];
    this.isMedicine =
        map[DBHelper.drugIsMedicineColumnName] == 1 ? true : false;
  }
  Map<String, dynamic> toMap() {
    return {
      DBHelper.drugdatecolumnname: this.date,
      DBHelper.drugdosecolumnname: this.drugdose,
      DBHelper.drugtimecolumnname: this.time,
      DBHelper.drugIsMedicineColumnName: this.isMedicine ? 1 : 0
    };
  }
}
