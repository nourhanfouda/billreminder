import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:pills_reminder/UI/4add.dart';
import 'package:pills_reminder/models/drug_model.dart';
import 'package:pills_reminder/providers/database_provider.dart';
import 'package:pills_reminder/utilities/Colors.dart';
import 'package:pills_reminder/widget/CustomAppBar.dart';
import 'package:pills_reminder/widget/CustomDrawer.dart';
import 'package:pills_reminder/widget/addwedgit.dart';
import 'package:pills_reminder/widget/circle_day.dart';
import 'package:provider/provider.dart';

class AddMed extends StatefulWidget {
  AddMed({Key key}) : super(key: key);

  @override
  _AddMedState createState() => _AddMedState();
}

class _AddMedState extends State<AddMed> {
  TimeOfDay _selectedTime;
  ValueChanged<TimeOfDay> selectTime;

  Drugmodel myDrug = Drugmodel();

  @override
  void initState() {
    _selectedTime = new TimeOfDay(hour: 12, minute: 30);
    super.initState();
  }

  bool isMedicine = false;
  String drugname;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Customappbar(
        title: translator.translate('AddMed'),
      ),
      drawer: Customdrawer(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: 700,
          height: 700,
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
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 50.0, right: 50, top: 60, bottom: 50),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AddWidget(
                      onChanged: (value) {
                        myDrug.drugname = value.tirm();
                      },
                      label: translator.translate("medname"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AddWidget(
                      onChanged: (value) {
                        myDrug.drugdose = value.tirm();
                      },
                      label: translator.translate("meddose"),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  translator.translate("time"),
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                new GestureDetector(
                                  child: Text(
                                    _selectedTime.format(context),
                                    style: TextStyle(
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.bold,
                                      color: maincolor,
                                    ),
                                  ),
                                  onTap: () {
                                    _selectTime(context);
                                  },
                                ),
                              ],
                            ),
                          ),
                          RaisedButton(
                              onPressed: () {
                                DatePicker.showDatePicker(context,
                                    showTitleActions: true,
                                    minTime: DateTime(2018, 3, 5),
                                    maxTime: DateTime(2021, 6, 7),
                                    onChanged: (date) {
                                  print('change $date');
                                }, onConfirm: (date) {
                                  print('confirm $date');
                                },
                                    currentTime: DateTime.now(),
                                    locale: LocaleType.zh);
                              },
                              child: Text(
                                'seclet finish date',
                                style: TextStyle(color: Colors.blue),
                              )),
                          SizedBox(
                            height: 30.0,
                          ),
                          Container(
                            width: double.infinity,
                            height: 70,
                            child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      circleDay('Mon', context, false),
                                      circleDay('Tue', context, true),
                                      circleDay('Wed', context, true),
                                      circleDay('Thu', context, true),
                                      circleDay('Fri', context, false),
                                      circleDay('Sat', context, true),
                                      circleDay('Sun', context, true),
                                    ],
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    CheckboxListTile(
                        title: Text('Medicine'),
                        value: isMedicine,
                        onChanged: (value) {
                          isMedicine = value;
                          myDrug.isMedicine = isMedicine;

                          setState(() {});
                        }),
                    SizedBox(height: 40),
                    Container(
                      width: 130,
                      height: 50,
                      child: RaisedButton(
                          color: maincolor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            translator.translate("done"),
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          onPressed: () async {
                            context
                                .read<Databaseprovider>()
                                .insertNewdrug(myDrug);

                            Navigator.pop(context);
                            // Drugmodel drugmodel = Drugmodel(
                            //     drugname: drugname, isMedicine: isMedicine);
                            // await context
                            //     .read<Databaseprovider>()
                            //     .insertIntoDatabse(drugmodel);

                            // Navigator.pop(context);
                          }),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FlatButton(
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return Add();
                            }));
                          },
                          child: Text(
                            translator.translate("back"),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w100),
                            textAlign: TextAlign.center,
                          )),
                    )
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay picked =
        await showTimePicker(context: context, initialTime: _selectedTime);
    setState(() {
      _selectedTime = picked;
    });
  }
}
