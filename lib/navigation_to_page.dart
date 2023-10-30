import 'package:flutter/material.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_fifteen_screen/iphone_14_pro_fifteen_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_nineteen_screen/iphone_14_pro_nineteen_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_sixteen_screen/iphone_14_pro_sixteen_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_twenty_screen/iphone_14_pro_twenty_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_two_container_screen/iphone_14_pro_two_container_screen.dart';
import 'package:yashraj_s_application3/presentation/iphone_14_pro_two_page/iphone_14_pro_two_page.dart';

void main() {
  runApp(Dashboard());
}

class Dashboard extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<Dashboard> {
  int _currentIndex = 0; // Track the currently selected index
  List<Widget> _pages = []; // List of pages to be displayed

  @override
  void initState() {
    super.initState();
    _pages = [
      MovieHome(),  // home
      Iphone14ProNineteenScreen(),       // favorite
      Iphone14ProSixteenScreen(),        // search
      Iphone14ProFifteenScreen(),        // bell icon
      Iphone14ProTwentyScreen()          // settings
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.isNotEmpty ? _pages[_currentIndex] : Container(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: '',  // Empty label to hide it
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Colors.black),
            label: '',  // Empty label to hide it
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black),
            label: '',  // Empty label to hide it
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active, color: Colors.black),
            label: '',  // Empty label to hide it
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.menu, color: Colors.black),
            label: '',  // Empty label to hide it
          ),
        ],
        showSelectedLabels: false,  // Hide selected labels
        showUnselectedLabels: false,  // Hide unselected labels
      ),
    );
  }
}
