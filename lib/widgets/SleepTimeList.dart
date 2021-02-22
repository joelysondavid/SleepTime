import 'dart:isolate';

import 'package:flutter/material.dart';

import './sleep_time_card.dart';
// utils
import "../utils/app_colors.dart";

// models
import '../models/cycle.dart';

class SleepTimeList extends StatefulWidget {
  @override
  _SleepTimeListState createState() => _SleepTimeListState();

  final List<Cycle> sleepCycles;
  bool isWakeup;
  SleepTimeList({this.sleepCycles, this.isWakeup});
}

class _SleepTimeListState extends State<SleepTimeList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
      height: double.infinity,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        boxShadow: [BoxShadow(color: Colors.black, spreadRadius: 1)],
        color: AppColors.SECOND_COLOR,
      ),
      child: Container(
        child: widget.sleepCycles.isEmpty
            ? Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      "Não há ciclos selecionados!",
                      style: TextStyle(
                        color: AppColors.BACKGROUND_CARD_COLOR,
                        fontSize: 24,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(30),
                      height: 150,
                      child: Image.asset(
                        "assets/images/waiting.png",
                        fit: BoxFit.cover,
                        color: AppColors.BACKGROUND_CARD_COLOR,
                      ),
                    ),
                  ],
                ),
              )
            : ListView.builder(
                itemCount: widget.sleepCycles.length,
                itemBuilder: (ctx, index) {
                  final cycle = widget.sleepCycles[index];
                  return SleepTimeCard(
                    sleepCycle: cycle,
                    isWakeup: widget.isWakeup,
                  );
                },
              ),
      ),
    );
  }
}
