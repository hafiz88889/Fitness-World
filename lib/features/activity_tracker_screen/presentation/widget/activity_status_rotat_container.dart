import 'package:flutter/material.dart';

class ActivityStatusRotatContainer extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final Widget title;
  const ActivityStatusRotatContainer({super.key,
  required this.height,
  required this.width,
  required this.color,
  required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height,
      width: width,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color:color
      ),
      child:title
    );
  }
}
