import 'package:flutter/material.dart';

class Sizing {
  final BuildContext context;
  Sizing(this.context);

  double wp(double percent) => MediaQuery.of(context).size.width * (percent / 100);
  double hp(double percent) => MediaQuery.of(context).size.height * (percent / 100);
  double ts(double size) => size * MediaQuery.textScaleFactorOf(context);
}

Sizing s(BuildContext context) => Sizing(context);