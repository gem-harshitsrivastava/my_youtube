import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_youtube/sections/home.dart';
import 'package:my_youtube/sections/library.dart';
import 'package:my_youtube/sections/shorts.dart';
import 'package:my_youtube/sections/subscriptions.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<Widget> list = const [
    Home(),
    Shorts(),
    Subscription(),
    Library(),
  ];
  int selectedScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/headicon.png'),
        title: const Text(
          'YouTube',
          textAlign: TextAlign.left,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.cast)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notification_add)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.circle_rounded)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: selectedScreen,
        elevation: 16,
        items: const [
          BottomNavigationBarItem(
            // backgroundColor: Colors.blue,
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.flare_sharp,
                color: Colors.black,
              ),
              label: 'Shorts',
              activeIcon: Icon(
                Icons.flare_sharp,
                color: Colors.black,
              )),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.subscriptions,
              color: Colors.black,
            ),
            label: 'Subscriptions',
            activeIcon: Icon(
              Icons.subscriptions,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.library_add,
                color: Colors.black,
              ),
              label: 'Library',
              activeIcon: Icon(
                Icons.library_add,
                color: Colors.black,
              ))
        ],
        onTap: (value) {
          setState(() {
            selectedScreen = value;
          });
        },
      ),
      body: list[selectedScreen],
    );
  }
}
