import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../components/custom_appbar.dart';

class LapTest extends StatelessWidget {
  const LapTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CostumAppbar(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 40.h),
                    child: const Text(
                      'LAP TEST',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
