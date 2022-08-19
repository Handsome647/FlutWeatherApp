import 'package:flutter/material.dart';
import 'package:switch_button/switch_button.dart';

class Preference extends StatefulWidget {
  const Preference({Key? key}) : super(key: key);

  @override
  State<Preference> createState() => _PreferenceState();
}

class _PreferenceState extends State<Preference> {
  bool tempSwitch = true;
  bool windSwitch = true;
  bool timeSwitch = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            Row(mainAxisAlignment: MainAxisAlignment.center),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: [BoxShadow(blurRadius: 5)]),
              child: Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Image.asset(
                    'assets/profile.jpg',
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      SizedBox(height: 30, width: 15),
                      Text(
                        'Dac Huy Nguen',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15),
                      Text('Lorem ipseum'),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 0.8),
                        child: Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(60.0),
                                ),
                                border: Border.all(color: Colors.red)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('SIGN OUT'),
                              ],
                            )),
                      ),
                      // SizedBox(height: 50)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('SETTINGS',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    SizedBox(height: 10),
                    SwitchButton(
                      activeColor: Colors.green,
                      value: tempSwitch,
                      onToggle: (val) {
                        setState(() {
                          tempSwitch = val;
                        });
                      },
                      child: Text("Temperature"),
                    ),
                    SwitchButton(
                      backgroundColor: Colors.transparent,
                      activeColor: Colors.green,
                      value: windSwitch,
                      onToggle: (val) {
                        setState(() {
                          windSwitch = val;
                        });
                      },
                      child: Text("Wind Speed Mph"),
                    ),
                    SwitchButton(
                      activeColor: Colors.green,
                      value: timeSwitch,
                      onToggle: (val) {
                        setState(() {
                          timeSwitch = val;
                        });
                      },
                      child: Text("24-Hour Time"),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ABOUT',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Version : 1.9.1 Develop',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(height: 10),
                          Text('Authors:Group 20 - UI Design 2019 Course',
                              style: TextStyle(fontSize: 14)),
                          SizedBox(height: 10),
                          Text("Weather Info : Powered by Dark Sky API",
                              style: TextStyle(fontSize: 14)),
                          SizedBox(height: 10),
                          Text('New Source : VOV.vn',
                              style: TextStyle(fontSize: 14))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
