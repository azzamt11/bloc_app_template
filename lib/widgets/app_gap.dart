import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppGap extends StatelessWidget {
  const AppGap(this.mainAxisExtent, {super.key});

  static const AppGap s5 = AppGap(5);
  static const AppGap s10 = AppGap(10);
  static const AppGap s15 = AppGap(15);
  static const AppGap s20 = AppGap(20);
  static const AppGap s25 = AppGap(25);
  static const AppGap s30 = AppGap(30);
  static const AppGap s40 = AppGap(40);

  final double mainAxisExtent;

  @override
  Widget build(BuildContext context) {
    return Gap(mainAxisExtent);
  }
}
