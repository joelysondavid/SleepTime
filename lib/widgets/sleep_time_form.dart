import '../utils/app_colors.dart';
import 'package:flutter/material.dart';

class SleepTimeForm extends StatelessWidget {
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
                  color: AppColors.SECOND_COLOR,
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
                            color: AppColors.SECOND_COLOR),
                      )
                    ]),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Text("Regular",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: AppColors.SECOND_COLOR))
                    ]),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Text(
                        "Ruim",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: AppColors.SECOND_COLOR),
                      )
                    ]),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Text(
                        "Péssimo",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: AppColors.SECOND_COLOR),
                      )
                    ])
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Text("Que horas deseja acordar?"),
                        Container()
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 100,
                          height: 40,
                          margin: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(color: Colors.black, spreadRadius: 1)
                            ],
                            color: AppColors.BACKGROUND_CARD_COLOR,
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Flexible(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "00:00"),
                                    maxLength: 5,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: AppColors.SECOND_COLOR,
                                        decorationColor:
                                            AppColors.SECOND_COLOR),
                                  ),
                                )
                              ]),
                        ),
                        Center(
                          child: Switch(
                            onChanged: null,
                            value: true,
                            activeTrackColor: Colors.lightGreenAccent,
                            activeColor: Colors.green,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
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
