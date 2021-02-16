import 'package:flutter/material.dart';

// Utils
import './utils/app_colors.dart';

// Widgets
import 'widgets/sleep_time_initial.dart';

void main() => runApp(SleepTime());

class SleepTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SleepTime",
      home: SleepTimeHome(),
    );
  }
}

class SleepTimeHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SleepTimeHomeState();
}

class SleepTimeHomeState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background_color,
        title: Text("SleepTime"),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.all(5),
            width: 40,
            height: 40,
            child: FloatingActionButton(
              child: Text(
                "?",
                style: TextStyle(fontSize: 26, color: AppColors.primary_color),
              ),
              tooltip: "Informações",
              onPressed: null,
              backgroundColor: AppColors.background_card_color,
            ),
          ),
        ],
      ),
      body: SleepTimeInitial(),
      backgroundColor: AppColors.background_color,
    );
  }
}
