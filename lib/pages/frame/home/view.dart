import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paternproject/pages/frame/home/controller.dart';
import 'package:paternproject/utility/appColors.dart';
import 'package:paternproject/utility/pages_bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIdx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColors.white,
          onTap: (idx) {
            setState(() {
              pageIdx = idx;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          currentIndex: pageIdx,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_max_outlined, size: 30),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline, size: 30),
              label: 'favourite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline, size: 30),
              label: 'account',
            ),
          ]),
      body: Center(
        child: pages[pageIdx],
      ),
    );
  }
}
