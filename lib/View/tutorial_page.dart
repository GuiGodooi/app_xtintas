import 'package:app_xtintas/View/home_page.dart';
import 'package:app_xtintas/components/sized_box_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../components/colors_widget.dart';
import '../components/text_tutorial_widget.dart';

class TutorialPage extends StatelessWidget {
  const TutorialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsDS.whiteBG,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 28),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const HomePage();
                                },
                              ),
                            );
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                          )),
                      const SizedBox(width: 50),
                      Text(
                        'Como pintar',
                        style: GoogleFonts.openSans(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBoxComponent.verticalSpaceS48,
                TextTutorial(
                  width: 309,
                  height: 78,
                  txtNum: '1',
                  txtTitle: 'Prepare a tinta',
                  txtSubTitle: 'Abra a tinta e coloque na caçamba',
                  img: Image.asset('assets/paint_bucket.png'),
                ),
                SizedBoxComponent.verticalSpaceS64,
                TextTutorial(
                  width: 309,
                  height: 122,
                  txtNum: '2',
                  txtTitle: 'Primeira de mão',
                  txtSubTitle:
                      'Aplique a tinta na parede em N como mostrado no vídeo para melhor aproveitamento',
                  img: Image.asset('assets/brush.png'),
                ),
                iconDown(),
                TextTutorial(
                  width: 309,
                  height: 122,
                  txtNum: '3',
                  txtTitle: 'Repasse a tinta',
                  txtSubTitle:
                      'Passe mais uma camada de tinta por cima da parede para reduzir imperfeições',
                  img: Image.asset('assets/brush.png'),
                ),
                imageWaitTwoHours(),
                TextTutorial(
                  width: 309,
                  height: 122,
                  txtNum: '5',
                  txtTitle: 'Segunda demão',
                  txtSubTitle:
                      'Aplique a tinta na parede em N como mostrado no vídeo para melhor aproveitamento',
                  img: Image.asset('assets/brush.png'),
                ),
                const SizedBox(
                  height: 70,
                ),
                TextTutorial(
                  img: Image.asset('assets/brush.png'),
                  width: 309,
                  height: 122,
                  txtNum: '6',
                  txtTitle: 'Repasse a tinta',
                  txtSubTitle:
                      'Passe mais uma camada de tinta por cima da parede para reduzir imperfeições ',
                ),
                imageWaitTwoHours(),
                const TextTutorial(
                  width: 309,
                  height: 78,
                  txtNum: '7',
                  txtTitle: 'Acabou',
                  txtSubTitle: 'Sua parede está pronta                      ',
                ),
                const SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding iconDown() {
    return const Padding(
      padding: EdgeInsets.only(top: 70, bottom: 70),
      child: Icon(
        MdiIcons.arrowDown,
        size: 60,
        color: ColorsDS.grey,
      ),
    );
  }

  Padding imageWaitTwoHours() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 70,
        bottom: 70,
      ),
      child: Column(
        children: [
          Image.asset(
            'assets/time.png',
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Aguarde 2 horas',
            style: GoogleFonts.openSans(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
