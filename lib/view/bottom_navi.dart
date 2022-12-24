import 'package:flutter/material.dart';
import 'package:flutter_task/view/home/home_screen.dart';
import 'package:flutter_task/view/test/laptest.dart';
import 'package:flutter_task/view/test/offers.dart';
import 'package:flutter_task/view/test/orders.dart';
import 'package:flutter_task/view/test/profile.dart';

class BottomNavi extends StatefulWidget {
  @override
  State<BottomNavi> createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {
  List<Widget> pages = [
    const HomeScreen(),
    const Order(),
    const LapTest(),
    const Offers(),
    const Profile(),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          elevation: 0,
          selectedIconTheme: IconThemeData(
            color: Color.fromARGB(255, 145, 132, 217),
          ),
          selectedItemColor: Colors.black87,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedLabelStyle: const TextStyle(color: Colors.black),
          selectedLabelStyle:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("asset/home.png"),
              ),
              label: 'HOME',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("asset/order.png"),
              ),
              label: 'ORDERS',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("asset/Lab Test.png"),
              ),
              label: 'LAP TEST',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("asset/Offers.png"),
              ),
              label: 'OFFERS',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("asset/Profile.png"),
              ),
              label: 'PROFILE',
            ),
          ],
        ),
        body: pages[index],
      ),
    );
  }
}
