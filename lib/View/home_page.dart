import 'package:app_xtintas/View/tutorial_page.dart';
import 'package:app_xtintas/components/colors_widget.dart';
import 'package:app_xtintas/components/sized_box_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/button_rounded.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Text(
                'Opções de tintas',
                style: GoogleFonts.openSans(
                    fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 328,
                width: 319,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Stack(
                      children: [
                        Card(
                          elevation: 5,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50),
                                child: Image.asset(
                                  'assets/time.png',
                                  scale: 0.8,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(
                                  35,
                                ),
                                child: Text(
                                  'Tinta Suvinil Criativa',
                                  style: GoogleFonts.openSans(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ButtonRounded(
                                      press: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return const TutorialPage();
                                            },
                                          ),
                                        );
                                      },
                                      text: 'Como Pintar',
                                      background: ColorsDS.purple,
                                      radius: BorderRadius.horizontal(
                                        left: Radius.circular(20),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    ButtonRounded(
                                      text: 'Tirar dúvidas',
                                      press: () {},
                                      background: ColorsDS.grey,
                                      radius: BorderRadius.horizontal(
                                        right: Radius.circular(20),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 18, right: 12),
                            child: Container(
                              color: ColorsDS.grey,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Indicação',
                                  style: GoogleFonts.openSans(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
