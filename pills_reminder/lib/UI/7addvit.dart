// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
// import 'package:localize_and_translate/localize_and_translate.dart';
// import 'package:pills_reminder/utilities/Colors.dart';
// import 'package:pills_reminder/widget/CustomAppBar.dart';
// import 'package:pills_reminder/widget/CustomDrawer.dart';
// import 'package:pills_reminder/widget/addwedgit.dart';
// import 'package:pills_reminder/widget/circle_day.dart';

// class Addvit extends StatefulWidget {
//   Addvit({Key key}) : super(key: key);

//   @override
//   _AddvitState createState() => _AddvitState();
// }

// class _AddvitState extends State<Addvit> {
//   TimeOfDay _selectedTime;
//   ValueChanged<TimeOfDay> selectTime;

//   @override
//   void initState() {
//     _selectedTime = new TimeOfDay(hour: 12, minute: 30);
//     super.initState();
//   }

//   String vitname;

//   int time;
//   int dosepertablet;
//   var addvitkey = GlobalKey<FormState>();
//   saveform() {
//     if (isAccepted) {
//       bool validateresult = addvitkey.currentState.validate();
//       if (validateresult) {
//         return true;
//       } else
//         return;
//     }
//   }

//   savevitname(String value) {
//     this.vitname = value;
//   }

//   savedosepertablet(int value) {
//     this.dosepertablet = value;
//   }

//   String validatevitname(String value) {
//     if (value.isEmpty) {
//       return '*Required';
//     } else
//       return null;
//   }

//   String validatedosepertablet(String value) {
//     if (value.isEmpty) {
//       return '*Required';
//     } else
//       return null;
//   }

//   bool isAccepted = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: Customappbar(
//         title: translator.translate('addvit'),
//       ),
//       drawer: Customdrawer(),
//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Container(
//           width: 700,
//           height: 700,
//           decoration: BoxDecoration(
//               color: Colors.white,
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.withOpacity(0.4),
//                   blurRadius: 9,
//                   spreadRadius: 5,
//                   offset: Offset(0, 0.9),
//                 )
//               ],
//               borderRadius: BorderRadius.circular(7)),
//           child: ListView(children: [
//             Padding(
//               padding: const EdgeInsets.only(
//                   left: 50.0, right: 50, top: 60, bottom: 50),
//               child: Container(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     AddWidget(
//                       label: translator.translate("vitname"),
//                       save: savevitname,
//                       validate: validatevitname,
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     AddWidget(
//                       label: translator.translate("vitdose"),
//                       save: savedosepertablet,
//                       validate: validatedosepertablet,
//                     ),
//                     Container(
//                       child: Column(
//                         children: <Widget>[
//                           Padding(
//                             padding: const EdgeInsets.all(20.0),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceAround,
//                               children: [
//                                 Text(
//                                   translator.translate("time"),
//                                   style: TextStyle(
//                                       color: Colors.black45,
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                                 new GestureDetector(
//                                   child: Text(
//                                     _selectedTime.format(context),
//                                     style: TextStyle(
//                                       fontSize: 40.0,
//                                       fontWeight: FontWeight.bold,
//                                       color: maincolor,
//                                     ),
//                                   ),
//                                   onTap: () {
//                                     _selectTime(context);
//                                   },
//                                 ),
//                               ],
//                             ),
//                           ),
//                           RaisedButton(
//                               onPressed: () {
//                                 DatePicker.showDatePicker(context,
//                                     showTitleActions: true,
//                                     minTime: DateTime(2018, 3, 5),
//                                     maxTime: DateTime(2019, 6, 7),
//                                     onChanged: (date) {
//                                   print('change $date');
//                                 }, onConfirm: (date) {
//                                   print('confirm $date');
//                                 },
//                                     currentTime: DateTime.now(),
//                                     locale: LocaleType.zh);
//                               },
//                               child: Text(
//                                 'seclet finish date',
//                                 style: TextStyle(color: Colors.blue),
//                               )),
//                           SizedBox(
//                             height: 30.0,
//                           ),
//                           Container(
//                             width: double.infinity,
//                             height: 70,
//                             child: ListView(
//                                 scrollDirection: Axis.horizontal,
//                                 children: [
//                                   Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     children: <Widget>[
//                                       circleDay('Mon', context, false),
//                                       circleDay('Tue', context, true),
//                                       circleDay('Wed', context, true),
//                                       circleDay('Thu', context, true),
//                                       circleDay('Fri', context, false),
//                                       circleDay('Sat', context, true),
//                                       circleDay('Sun', context, true),
//                                     ],
//                                   ),
//                                 ]),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(height: 40),
//                     Container(
//                       width: 130,
//                       height: 50,
//                       child: RaisedButton(
//                           color: maincolor,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10)),
//                           child: Text(
//                             translator.translate("done"),
//                             style: TextStyle(color: Colors.white, fontSize: 25),
//                           ),
//                           onPressed: () {
//                             saveform();
//                             Navigator.of(context).pop();
//                           }),
//                     ),
//                     SizedBox(height: 30),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: FlatButton(
//                           onPressed: () {
//                             Navigator.of(context)
//                                 .push(MaterialPageRoute(builder: (context) {
//                               return;
//                             }));
//                           },
//                           child: Text(
//                             translator.translate("back"),
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.w100),
//                             textAlign: TextAlign.center,
//                           )),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ]),
//         ),
//       ),
//     );
//   }

//   Future<void> _selectTime(BuildContext context) async {
//     final TimeOfDay picked =
//         await showTimePicker(context: context, initialTime: _selectedTime);
//     setState(() {
//       _selectedTime = picked;
//     });
//   }
// }
