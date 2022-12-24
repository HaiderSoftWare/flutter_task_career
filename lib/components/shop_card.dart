import 'package:flutter/material.dart';
import 'package:flutter_task/components/custom_card.dart';
import 'package:sizer/sizer.dart';

class Shop_Card extends StatelessWidget {
  const Shop_Card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Custom_Card(
      height: 19.h,
      color: const Color(0xffC7F4C2),
      chlidCard: Stack(
        children: [
          Positioned(
            right: 12,
            top: 15,
            bottom: 27,
            child: Image.asset('asset/Oval.png'),
          ),
          Positioned(
            right: 120,
            top: 0,
            child: Image.asset('asset/Oval-2.png'),
          ),
          Positioned(
            right: -26,
            bottom: 13,
            child: Image.asset(
              'asset/image 2.png',
              width: 220,
            ),
          ),
          const Positioned(
            left: 12,
            top: 12,
            child: RotatedBox(
              quarterTurns: 11,
              child: Text(
                'UPTO',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Positioned(
            left: 36,
            top: 12,
            child: Text(
              '80%',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          const Positioned(
            left: 70,
            top: 48,
            child: Text(
              'OFFER*',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),
          const Positioned(
            left: 12,
            top: 68,
            child: Text(
              'On Health Products',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            left: 12,
            top: 92,
            child: Container(
              width: 97,
              height: 32,
              decoration: BoxDecoration(
                  color: const Color(0XFF0BAB7C),
                  borderRadius: BorderRadius.circular(7)),
              child: const Center(
                child: Text(
                  'SHOP NOW',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          const Positioned(
            left: 12,
            bottom: 10,
            child: Text(
              'Homeopathy, Ayurvedic,\nPersonal Care & More',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
            ),
          ),
        ],
      ),
    );
  }
}
