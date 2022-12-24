import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Custom_Card extends StatelessWidget {
  final Color? color;
  final Widget? chlidCard;
  final double? height;
  const Custom_Card({
    this.chlidCard,
    this.height,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 92.w,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: chlidCard,
    );
  }
}
