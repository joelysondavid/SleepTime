import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class SleepTimeInfo extends StatelessWidget {
  var appBar = AppBar(
    title: Text("Informações"),
    backgroundColor: AppColors.BACKGROUND_COLOR,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: AppColors.BACKGROUND_COLOR,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green,
                        ),
                        Text(
                          "O cálculo do tempo de sono deve ser feito a partir do momento que se adormece e não no momento em que se deita, pois nem sempre a hora de deitar corresponde à hora que se adormece. Por isso, antes de fazer o cálculo, é importante acrescentar o tempo que normalmente se leva para dormir, o que é em média 15 a 30 minutos.",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "A quantidade de ciclos de 90 minutos que se dorme é variável e depende da necessidade de cada pessoa, porém o segredo é permitir que cada ciclo se complete totalmente, acordando apenas no final deste.",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
