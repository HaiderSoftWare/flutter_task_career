import 'package:flutter/material.dart';
import 'package:flutter_task/components/custom_shop_icon.dart';
import 'package:sizer/sizer.dart';

class CostumAppbar extends StatelessWidget {
  const CostumAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28, top: 8, right: 28, bottom: 0),
      child: Row(
        children: [
          Image.asset(
            'asset/person.png',
            width: 7.w,
            height: 6.h,
          ),
          SizedBox(
            width: 2.w,
          ),
          const Expanded(
            child: Text(
              'Medicine',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          const Custom_Shop_Icon(),
        ],
      ),
    );
  }
}
