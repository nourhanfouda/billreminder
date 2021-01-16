import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:pills_reminder/utilities/Colors.dart';

class AddWidget extends StatelessWidget {
  @override
  String label;
  Function onChanged;
  AddWidget({@required this.label, this.onChanged});
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
          labelText: translator.translate(label),
          focusColor: maincolor,
          hoverColor: maincolor,
          fillColor: maincolor,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
