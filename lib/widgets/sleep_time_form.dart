import 'package:flutter/material.dart';

import './sleep_time_bar.dart';
import "./SleepTimeList.dart";

class SleepTimeForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      child: Column(
        children: <Widget>[
          SleepTimeBar(),
          Flexible(
            child: SleepTimeList(),
          )
        ],
      ),
    );
  }
}
