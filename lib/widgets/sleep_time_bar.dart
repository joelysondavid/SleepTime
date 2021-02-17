import 'package:flutter/material.dart';

//utils
import "../utils/app_colors.dart";

// mask
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SleepTimeBar extends StatelessWidget {
  final maskHours =
      MaskTextInputFormatter(mask: "##:##", filter: {"#": RegExp((r"[0-9]"))});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
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
                    Text(
                      "Que horas deseja acordar?",
                      style: TextStyle(
                          color: AppColors.SECOND_COLOR,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Container()
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 40,
                      margin:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      child: Center(
                        child: TextField(
                          inputFormatters: [maskHours],
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.bottom,
                          decoration: InputDecoration(
                              fillColor: AppColors.BACKGROUND_CARD_COLOR,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(color: Colors.red),
                              ),
                              hintText: "00:00",
                              hintStyle:
                                  TextStyle(color: AppColors.SECOND_COLOR)),
                          style: TextStyle(
                            fontSize: 28,
                            color: AppColors.SECOND_COLOR,
                            decorationColor: AppColors.SECOND_COLOR,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Switch(
                        onChanged: (_) => {},
                        value: true,
                        activeTrackColor: AppColors.BACKGROUND_CARD_COLOR,
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
    );
  }
}
