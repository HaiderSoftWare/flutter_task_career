import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Custom_Shop_Icon extends StatelessWidget {
  const Custom_Shop_Icon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          'asset/263142.png',
          width: 6.w,
          height: 6.h,
        ),
        Positioned(
          right: -9,
          bottom: 16,
          child: Container(
            width: 4.5.w,
            height: 4.5.h,
            decoration: const BoxDecoration(
              color: Colors.teal,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Container(
                width: 3.5.w,
                height: 3.5.h,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Text(
                    '2',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
