import 'package:bloc_app_template/utilities/ui_utils.dart';
import 'package:flutter/material.dart';

class BackdropView extends StatelessWidget {
  const BackdropView(this.backdropUrl, {super.key});

  final String backdropUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 300,
          child: Image.network(
            backdropUrl,
            errorBuilder: (_, __, ___) =>
                Container(color: backgroundLightColor),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: 300,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.transparent,
                backgroundColor,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
