import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class SleepTimeInfo extends StatelessWidget {
  final appBar = AppBar(
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
            padding: const EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.PRIMARY_COLOR,
                  ),
                  margin: EdgeInsets.symmetric(vertical: 4),
                  child: ExpansionTile(
                    title: Text(
                      "Calculo do ciclo de sono",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    childrenPadding: EdgeInsets.all(10),
                    children: [
                      Text(
                        "O cálculo do tempo de sono deve ser feito a partir do momento que se adormece e não no momento em que se deita, pois nem sempre a hora de deitar corresponde à hora que se adormece. Por isso, antes de fazer o cálculo, é importante acrescentar o tempo que normalmente se leva para dormir, o que é em média 15 a 30 minutos.",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.PRIMARY_COLOR,
                  ),
                  margin: EdgeInsets.symmetric(vertical: 4),
                  child: ExpansionTile(
                    title: Text(
                      "Nota",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    childrenPadding: EdgeInsets.all(10),
                    children: [
                      Text(
                        "A quantidade de ciclos de 90 minutos que se dorme é variável e depende da necessidade de cada pessoa, porém o segredo é permitir que cada ciclo se complete totalmente, acordando apenas no final deste.",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
