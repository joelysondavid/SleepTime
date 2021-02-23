import 'package:flutter/material.dart';

import './sleep_time_bar.dart';
import "./SleepTimeList.dart";
import "../models/cycle.dart";

class SleepTimeForm extends StatefulWidget {
  final TimeOfDay timeOfDay;

  SleepTimeForm({this.timeOfDay});

  @override
  _SleepTimeFormState createState() => _SleepTimeFormState();
}

class _SleepTimeFormState extends State<SleepTimeForm> {
  List<Cycle> cycles = [];
  bool _isWakeup = true;
  TimeOfDay hours;

  void _calculate(TimeOfDay hours) {
    setState(() {
      cycles = [];
    });
    for (int cycle = 6; cycle > 0; cycle--) {
      setState(() {
        cycles.add(Cycle(
            cycles: cycle,
            sleepHours: calculateSleep(cycle),
            sleepTime: calculateHours(hours, cycle)));
        this.hours = hours;
      });
    }
  }

  void sleepWakeup() {
    setState(() {
      _isWakeup = !_isWakeup;
      if (this.hours != null) _calculate(this.hours);
    });
  }

  TimeOfDay calculateHours(TimeOfDay hours, int cycle) {
    if (_isWakeup) {
      TimeOfDay sleepCalculated = calculateSleep(cycle);
      int hour = (hours.hour - sleepCalculated.hour);
      hour = hour < 0 ? hour + 24 : hour;
      hour = sleepCalculated.minute == 30 ? hour - 1 : hour;

      int minute = sleepCalculated.minute == 30
          ? (hours.minute + 30)
          : (sleepCalculated.minute - hours.minute).abs();

      minute = minute > 60 ? ((hours.minute + 30) % 60) : minute;

      return TimeOfDay(hour: hour, minute: minute);
    } else {
      TimeOfDay sleepCalculated = calculateSleep(cycle);
      int hour = (hours.hour + sleepCalculated.hour);
      hour = hour >= 24 ? 24 - hour : hour;
      hour = sleepCalculated.minute == 30 ? hour + 1 : hour;

      int minute = sleepCalculated.minute == 30
          ? hours.minute - 30
          : (sleepCalculated.minute - hours.minute).abs();

      minute = minute < 0 ? ((hours.minute + 30) % 60) : minute;

      return TimeOfDay(hour: hour, minute: minute);
    }
  }

  TimeOfDay calculateSleep(int cycle) {
    int hour = ((cycle * 90) ~/ 60);
    int minute = ((cycle * 90) % 60);
    return TimeOfDay(hour: hour, minute: minute);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      child: Column(
        children: <Widget>[
          SleepTimeBar(_calculate, sleepWakeup, _isWakeup),
          Flexible(
            child: SleepTimeList(
              sleepCycles: cycles,
              isWakeup: _isWakeup,
            ),
          )
        ],
      ),
    );
  }
}
