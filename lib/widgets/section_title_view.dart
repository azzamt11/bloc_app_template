import 'package:bloc_app_template/widgets/app_gap.dart';
import 'package:flutter/material.dart';

class SectionTitleView extends StatelessWidget {
  const SectionTitleView({
    super.key,
    required this.title,
    required this.content,
    this.titlePadding,
  });

  final String title;
  final Widget content;
  final EdgeInsets? titlePadding;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: titlePadding ?? EdgeInsets.zero,
            child: Text(
              title,
              style:
                  const TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
            ),
          ),
          AppGap.s10,
          content,
        ],
      ),
    );
  }
}
