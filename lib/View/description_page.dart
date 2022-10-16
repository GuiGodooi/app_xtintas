import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'components/colors_widget.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsDS.whiteBG,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 70,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 28),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
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
                const SizedBox(
                  height: 43,
                ),
                SizedBox(
                  width: 309,
                  height: 78,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '1',
                            style: GoogleFonts.openSans(
                              fontSize: 32,
                              color: ColorsDS.purple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 27,
                          ),
                          Text(
                            'Prepare a tinta',
                            style: GoogleFonts.openSans(
                                fontSize: 26, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 38,
                          ),
                          Image.asset(
                            'assets/paint_bucket.png',
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Abra a tinta e a coloque na caçamba',
                        style: GoogleFonts.openSans(
                            fontSize: 16, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                SizedBox(
                  width: 309,
                  height: 122,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '2',
                            style: GoogleFonts.openSans(
                                fontSize: 32,
                                color: ColorsDS.purple,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 27,
                          ),
                          Text(
                            'Primeira de mão',
                            style: GoogleFonts.openSans(
                                fontSize: 26, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset('assets/brush.png')
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Text(
                          'Aplique a tinta na parede em N como mostrado no vídeo para melhor aproveitamento',
                          style: GoogleFonts.openSans(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 70, bottom: 70),
                  child: Icon(
                    MdiIcons.arrowDown,
                    size: 60,
                    color: Color.fromRGBO(218, 218, 218, 1),
                  ),
                ),
                SizedBox(
                  width: 309,
                  height: 122,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '3',
                            style: GoogleFonts.openSans(
                                fontSize: 32,
                                color: ColorsDS.purple,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 27,
                          ),
                          Text(
                            'Repasse a Tinta',
                            style: GoogleFonts.openSans(
                                fontSize: 26, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 35,
                          ),
                          Image.asset('assets/brush.png')
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Text(
                          'Passe mais uma camada de tinta por cima da parede para reduzir imperfeições',
                          style: GoogleFonts.openSans(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
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
                      Text('Aguarde 2 horas',
                          style: GoogleFonts.openSans(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  width: 309,
                  height: 122,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '5',
                            style: GoogleFonts.openSans(
                                fontSize: 32,
                                color: ColorsDS.purple,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 27,
                          ),
                          Text(
                            'Segunda demão',
                            style: GoogleFonts.openSans(
                                fontSize: 26, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 35,
                          ),
                          Image.asset('assets/brush.png')
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Text(
                          'Aplique a tinta na parede em N como mostrado no vídeo para melhor aproveitamento',
                          style: GoogleFonts.openSans(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                SizedBox(
                  width: 309,
                  height: 122,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '6',
                            style: GoogleFonts.openSans(
                                fontSize: 32,
                                color: ColorsDS.purple,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 27,
                          ),
                          Text(
                            'Repasse a Tinta',
                            style: GoogleFonts.openSans(
                                fontSize: 26, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 35,
                          ),
                          Image.asset('assets/brush.png')
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Text(
                          'Passe mais uma camada de tinta por cima da parede para reduzir imperfeições',
                          style: GoogleFonts.openSans(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
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
                ),
                SizedBox(
                  width: 309,
                  height: 78,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '7',
                            style: GoogleFonts.openSans(
                              fontSize: 32,
                              color: ColorsDS.purple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 27,
                          ),
                          Text(
                            'Acabou',
                            style: GoogleFonts.openSans(
                                fontSize: 26, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 90,
                        ),
                        child: Text(
                          'Sua parede está pronta',
                          style: GoogleFonts.openSans(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
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
}
