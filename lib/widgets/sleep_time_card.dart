import 'package:SleepTime/main.dart';
import 'package:flutter/material.dart';

// utils
import '../utils/app_colors.dart';

// widgets
import '../models/cycle.dart';

class SleepTimeCard extends StatelessWidget {
  final Cycle sleepCycle;
  final bool isWakeup;
  SleepTimeCard({this.sleepCycle, this.isWakeup});

  Color setColor(int cycle) {
    switch (cycle) {
      case 1:
        return AppColors.BACKGROUND_TERRIBLE_COLOR;
      case 2:
        return AppColors.BACKGROUND_BAD_COLOR;
      case 3:
      case 4:
        return AppColors.BACKGROUND_REGULAR_COLOR;
      case 5:
      case 6:
        return AppColors.BACKGROUND_IDEAL_COLOR;
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      return Card(
        color: AppColors.BACKGROUND_CARD_COLOR,
        child: Container(
          width: double.infinity,
          height: 100,
          child: Row(
            children: <Widget>[
              Container(
                width: constraints.maxWidth * 0.15,
                height: 30,
                child: CircleAvatar(
                  backgroundColor: setColor(sleepCycle.cycles),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        width: constraints.maxWidth * 0.2,
                        child: Column(
                          children: <Widget>[
                            Text(
                              isWakeup ? "Dormir" : "Acordar",
                              style: TextStyle(
                                  color: AppColors.SECOND_COLOR,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              sleepCycle.sleepTime.format(context),
                              style: TextStyle(
                                color: AppColors.SECOND_COLOR,
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        width: constraints.maxWidth * 0.2,
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Ciclos",
                              style: TextStyle(
                                  color: AppColors.SECOND_COLOR,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "${sleepCycle.cycles}",
                              style: TextStyle(
                                  color: AppColors.SECOND_COLOR, fontSize: 24),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Hrs. de Sono",
                              style: TextStyle(
                                  color: AppColors.SECOND_COLOR,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              sleepCycle.sleepHours.format(context),
                              style: TextStyle(
                                  color: AppColors.SECOND_COLOR, fontSize: 24),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
