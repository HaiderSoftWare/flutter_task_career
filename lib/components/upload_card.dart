import 'package:flutter/material.dart';
import 'package:flutter_task/components/custom_card.dart';
import 'package:sizer/sizer.dart';

class Upload_card extends StatelessWidget {
  const Upload_card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Custom_Card(
      height: 17.h,
      color: const Color(0xffD7D0FF),
      chlidCard: Padding(
        padding: const EdgeInsets.only(top: 18, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Upload Prescription',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Text(
              'Upload a Prescription and Tell Us what\n you Need. We do the Rest.!',
              style: TextStyle(color: Colors.black54),
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Flat 25% off\non Medicines*',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 105,
                  height: 36,
                  decoration: BoxDecoration(
                      color: const Color(0XFF5F48E6),
                      borderRadius: BorderRadius.circular(7)),
                  child: const Center(
                    child: Text(
                      'Order Now',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
