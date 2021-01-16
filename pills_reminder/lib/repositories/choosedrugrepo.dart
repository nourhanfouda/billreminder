import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:pills_reminder/models/chooseMedmodel.dart';

List<Choosedrug> choosedrug = [
  Choosedrug(
      drugurl: 'assets/images/capsules.jpg',
      drugname: translator.translate('capsules')),
  Choosedrug(
      drugurl: 'assets/images/tablets.jpg',
      drugname: translator.translate('tablets')),
  Choosedrug(
      drugurl: 'assets/images/creams.jpg',
      drugname: translator.translate('creams')),
  Choosedrug(
      drugurl: 'assets/images/injections.jpg',
      drugname: translator.translate('injections')),
  Choosedrug(
      drugurl: 'assets/images/solution.jpg',
      drugname: translator.translate('solution')),
  Choosedrug(
      drugurl: 'assets/images/inhaler.jpg',
      drugname: translator.translate('inhaler')),
];
