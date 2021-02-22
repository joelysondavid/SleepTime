import 'package:flutter/material.dart';

// utils
import "../utils/app_colors.dart";

class SleepTimeList extends StatefulWidget {
  @override
  _SleepTimeListState createState() => _SleepTimeListState();
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
      child: Column(
        children: <Widget>[
          Card(
            color: AppColors.BACKGROUND_CARD_COLOR,
            child: Container(
              width: double.infinity,
              height: 100,
              child: Row(
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 30,
                    child: CircleAvatar(
                      backgroundColor: AppColors.BACKGROUND_IDEAL_COLOR,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Text(
                              "Hr. Dormir",
                              style: TextStyle(
                                  color: AppColors.SECOND_COLOR,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Text(
                              "Ciclos",
                              style: TextStyle(
                                  color: AppColors.SECOND_COLOR,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Text(
                              "Horas de Sono",
                              style: TextStyle(
                                  color: AppColors.SECOND_COLOR,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
