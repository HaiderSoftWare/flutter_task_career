import 'package:flutter/material.dart';
import 'package:flutter_task/view/bottom_navi.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) {
        return BottomNavi();
      },
    ),
  );
}
