import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//utils
import "../utils/app_colors.dart";

// mask
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SleepTimeBar extends StatefulWidget {
  @override
  _SleepTimeBarState createState() => _SleepTimeBarState();

  final Function(TimeOfDay) _calculate;
  final void Function() _sleepWakeup;
  final bool isWakeup;

  SleepTimeBar(this._calculate, this._sleepWakeup, this.isWakeup);
}

class _SleepTimeBarState extends State<SleepTimeBar> {
  TimeOfDay _selectedHours;
  final maskHours =
      MaskTextInputFormatter(mask: "##:##", filter: {"#": RegExp((r"[0-9]"))});

  void _openHours(ctx) {
    showTimePicker(context: ctx, initialTime: TimeOfDay.now()).then((hours) {
      setState(() {
        _selectedHours = hours;
        print(_selectedHours);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      return Container(
        margin: EdgeInsets.all(5),
        child: Row(
          children: <Widget>[
            Container(
              width: constraints.maxWidth * 0.075,
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
                    width: constraints.maxWidth * 0.15,
                    height: 25,
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                    ),
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.black, // border color
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: constraints.maxWidth * 0.15,
                    height: 25,
                    child: CircleAvatar(
                      backgroundColor: Colors.yellow,
                    ),
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.black, // border color
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: constraints.maxWidth * 0.15,
                    height: 25,
                    child: CircleAvatar(
                      backgroundColor: Colors.orange,
                    ),
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.black, // border color
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: constraints.maxWidth * 0.15,
                    height: 25,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                    ),
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.black, // border color
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 110,
              width: constraints.maxWidth * 0.2,
              margin: EdgeInsets.all(5),
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
                      Container(
                        width: constraints.maxWidth * 0.6,
                        child: Text(
                          "Que horas deseja ${widget.isWakeup ? "Acordar" : "Dormir"}?",
                          style: TextStyle(
                              color: AppColors.SECOND_COLOR,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        height: 40,
                        margin:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        child: Center(
                          child: TextButton(
                            onPressed: () => _openHours(context),
                            style: TextButton.styleFrom(
                                backgroundColor:
                                    AppColors.BACKGROUND_CARD_COLOR),
                            child: Text(
                              _selectedHours != null
                                  ? _selectedHours.format(context)
                                  : "00:00",
                              style: TextStyle(
                                color: AppColors.SECOND_COLOR,
                                fontSize: 22,
                              ),
                            ),
                            //color: AppColors.BACKGROUND_CARD_COLOR,
                          ),
                        ),
                      ),
                      Center(
                        child: Transform.scale(
                          scale: 0.8,
                          child: CupertinoSwitch(
                            onChanged: (_) {
                              widget._sleepWakeup();
                              widget._calculate(_selectedHours);
                            },
                            value: widget.isWakeup,
                            activeColor: AppColors.BACKGROUND_CARD_COLOR,
                            trackColor: AppColors.SWITCH_COLOR,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: _selectedHours == null
                            ? null
                            : () => {widget._calculate(_selectedHours)},
                        child: Text(
                          "OK",
                          style: TextStyle(color: AppColors.PRIMARY_COLOR),
                        ),
                        style: TextButton.styleFrom(
                            backgroundColor: AppColors.SWITCH_COLOR),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
