import '../utils/app_colors.dart';
import 'package:flutter/material.dart';

import './sleep_time_bar.dart';

class SleepTimeForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      child: Column(
        children: <Widget>[
          SleepTimeBar(),
          Flexible(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
              height: double.infinity,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                boxShadow: [BoxShadow(color: Colors.black, spreadRadius: 1)],
                color: AppColors.SECOND_COLOR,
              ),
            ),
          )
        ],
      ),
    );
  }
}
