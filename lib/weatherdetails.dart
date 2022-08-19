import 'package:flutter/material.dart';

class WeatherDetails extends StatelessWidget {
  const WeatherDetails({Key? key, required this.label, required this.value})
      : super(key: key);

  final label;
  final value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            value,
          ),
        )
      ],
    );
  }
}
