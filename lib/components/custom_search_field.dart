import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Custom_Search_Field extends StatelessWidget {
  final void Function()? onTap;
  final void Function(String)? onChanged;
  const Custom_Search_Field({
    this.onChanged,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        width: 92.w,
        height: 7.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: const Color(0xffF3F2E9),
        ),
        child: Center(
          child: TextField(
            onChanged: onChanged,
            onTap: onTap,
            textInputAction: TextInputAction.search,
            decoration: const InputDecoration(
              border: InputBorder.none,
              suffixIcon: InkWell(
                child: Icon(Icons.search),
              ),
              contentPadding: EdgeInsets.all(15.0),
              hintText: 'Search Medicine & Health Products ',
            ),
          ),
        ),
      ),
    );
  }
}
