import 'package:SleepTime/utils/app_colors.dart';
import 'package:flutter/material.dart';

class SleepTimeInitial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 30,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [BoxShadow(color: Colors.black, spreadRadius: 1)],
                  color: AppColors.second_color,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(color: Colors.black, spreadRadius: 1)
                        ],
                        color: Colors.green,
                      ),
                    ),
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(color: Colors.black, spreadRadius: 1)
                        ],
                        color: Colors.yellow,
                      ),
                    ),
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(color: Colors.black, spreadRadius: 1)
                        ],
                        color: Colors.orange,
                      ),
                    ),
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(color: Colors.black, spreadRadius: 1)
                        ],
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 110,
                width: 70,
                margin: EdgeInsets.all(4),
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Text(
                        "Ideal",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: AppColors.second_color),
                      )
                    ]),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Text("Regular",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: AppColors.second_color))
                    ]),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Text(
                        "Ruim",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: AppColors.second_color),
                      )
                    ]),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Text(
                        "Péssimo",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: AppColors.second_color),
                      )
                    ])
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
