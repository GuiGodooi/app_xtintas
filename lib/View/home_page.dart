import 'package:app_xtintas/View/tutorial_page.dart';
import 'package:app_xtintas/components/colors_widget.dart';
import 'package:app_xtintas/components/sized_box_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.store_outlined,
                size: 35,
              ),
              label: 'Loja'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 35,
              ),
              label: 'Carrinho'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                size: 35,
              ),
              label: 'Perfil'),
        ],
        selectedItemColor: ColorsDS.purple,
        unselectedItemColor: Colors.grey,
      ),
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
                        CardPaint(),
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
                    const CardInfo(),
                    SizedBoxComponent.verticalSpaceS20,
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorsDS.purple,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        child: Text(
                          'Adicionar ao carrinho',
                          style: GoogleFonts.openSans(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBoxComponent.verticalSpaceS36,
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

class CardInfo extends StatelessWidget {
  const CardInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Diferenciais',
              style: GoogleFonts.openSans(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const RowCustom(
            text: 'Fácil de aplicar',
            icon: Icons.brush,
          ),
          const RowCustom(
            text: 'Não deixa cheiro',
            icon: MdiIcons.airFilter,
          ),
          const RowCustom(
            text: 'É só abrir, mexer e pintar',
            icon: Icons.threesixty_rounded,
          )
        ],
      ),
    );
  }
}

class RowCustom extends StatelessWidget {
  final String text;
  final icon;
  const RowCustom({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        bottom: 10,
        top: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 30,
          ),
          SizedBoxComponent.horizontalSpaceS24,
          Text(
            text,
            style: GoogleFonts.openSans(
              fontSize: 15,
              fontWeight: FontWeight.normal,
            ),
          )
        ],
      ),
    );
  }
}

class CardPaint extends StatelessWidget {
  const CardPaint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 45),
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
                  fontSize: 18, fontWeight: FontWeight.bold),
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
    );
  }
}
