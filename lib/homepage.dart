import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:weatherapp/weatherdetails.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      SizedBox(
        height: 50,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.place_rounded),
          Text(
            'Tarkwa',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )
        ],
      ),
      SizedBox(height: 10),
      Text(
        ' Mon Aug 15 2022',
        style: TextStyle(fontSize: 12),
      ),
      SizedBox(height: 40),
      Container(
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
            color: Colors.white,
            // border: Border.all(width: 5, color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            boxShadow: [BoxShadow(blurRadius: 0.35)]),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('23°', style: TextStyle(fontSize: 60)),
                  BoxedIcon(
                    WeatherIcons.day_cloudy,
                    size: 60,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Real Feel 23'),
                  Text(
                    'Overcast',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0x84000000)),
                  )
                ],
              ),
            ],
          ),
        ),
      ),

      // ),
      SizedBox(
        width: 250,
        child: Column(children: [
          SizedBox(height: 20),
          WeatherDetails(label: 'Humidity', value: '65%'),
          WeatherDetails(label: 'UV Index', value: ''),
          SizedBox(height: 20),
          WeatherDetails(label: 'Wind Speed', value: '5.00 mph'),
          SizedBox(height: 20),
          WeatherDetails(label: 'Rain Probability', value: '2%'),
          SizedBox(height: 20),
          WeatherDetails(label: 'Pressure', value: '1023.6 Pa')
        ]),
      ),
    ]));
  }
}
