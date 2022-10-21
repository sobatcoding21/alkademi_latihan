import 'package:flutter/material.dart';

class WidgetContainer extends StatelessWidget {
  const WidgetContainer({super.key, required this.width, required this.height, required this.color, required this.title, this.colorTitle = Colors.black, required this.onPressed });

  final double width;
  final double height;
  final Color color;
  final String title;
  final Color colorTitle;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
              width: width,
              height: height,
              color: color,
              child: TextButton(onPressed:onPressed,child: Text(title, textAlign: TextAlign.center, style: TextStyle(color: colorTitle))),
            );
  }
}