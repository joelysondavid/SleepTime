import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class SleepTimeInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Informações"),
        backgroundColor: AppColors.BACKGROUND_COLOR,
      ),
      body: Container(
        child: Center(
          child: Text("Informações"),
        ),
        color: AppColors.BACKGROUND_COLOR,
      ),
    );
  }
}
