import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Utils
import './utils/app_colors.dart';

// Widgets
import 'views/sleep_time_form.dart';
import 'views/sleep_time_info.dart';

import './routes/app_routes.dart';

void main() => runApp(SleepTime());

class SleepTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SleepTime",
      routes: {
        AppRoutes.HOME: (_) => SleepTimeHome(),
        AppRoutes.INFO: (_) => SleepTimeInfo(),
      },
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
    // seta as orientações que o app irá suportar
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.BACKGROUND_COLOR,
        title: Text("SleepTime"),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.all(5),
            width: 40,
            height: 40,
            child: FloatingActionButton(
              child: Text(
                "?",
                style: TextStyle(fontSize: 26, color: AppColors.PRIMARY_COLOR),
              ),
              tooltip: "Informações",
              onPressed: () => Navigator.pushNamed(context, AppRoutes.INFO),
              backgroundColor: AppColors.BACKGROUND_CARD_COLOR,
            ),
          ),
        ],
      ),
      body: SleepTimeForm(),
      backgroundColor: AppColors.BACKGROUND_COLOR,
    );
  }
}
