import 'package:flutter/material.dart';
import 'package:weatherapp/dashboard.dart';
import 'package:weatherapp/homepage.dart';
import 'package:weatherapp/profile.dart';

void main() => runApp(WeatherApp());

class WeatherApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        // Application name
        title: 'Weather',
        // Application theme data, you can set the colors for the application as
        // you want
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // A widget which will be started on application startup
        home: DashBoard());
  }
}
