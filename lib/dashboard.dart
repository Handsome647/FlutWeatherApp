import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:weatherapp/favorate.dart';
import 'package:weatherapp/homepage.dart';
import 'package:weatherapp/profile.dart';
import 'package:weatherapp/search.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  List screens = [
    HomePage(),
    Favorate(),
    Search(),
    Preference(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedTab.index],
      bottomNavigationBar: DotNavigationBar(
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        onTap: _handleIndexChanged,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        dotIndicatorColor: Colors.transparent,
        items: [
          /// Home
          DotNavigationBarItem(
            icon: Column(
              children: [
                BoxedIcon(WeatherIcons.day_cloudy, size: 16),
                Text(
                  'Weather',
                  style: TextStyle(fontSize: 9),
                )
              ],
            ),
          ),

          /// Likes
          DotNavigationBarItem(
            icon: Column(
              children: [
                Icon(Icons.location_on_outlined, size: 16),
                Text(
                  'Location',
                  style: TextStyle(fontSize: 9),
                )
              ],
            ),
          ),

          /// Search
          DotNavigationBarItem(
            icon: Column(
              children: [
                Icon(Icons.newspaper_outlined, size: 16),
                Text(
                  'Favorite',
                  style: TextStyle(fontSize: 9),
                )
              ],
            ),
          ),

          /// Profile
          DotNavigationBarItem(
            icon: Column(
              children: [
                Icon(
                  Icons.person,
                  size: 16,
                ),
                Text(
                  'Profile',
                  style: TextStyle(fontSize: 9),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

enum _SelectedTab { home, favorite, search, person }
