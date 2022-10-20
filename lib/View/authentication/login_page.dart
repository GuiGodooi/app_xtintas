import 'package:app_xtintas/View/authentication/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../components/button_widget.dart';
import '../../components/colors_widget.dart';
import '../../components/sized_box_widget.dart';
import '../../components/widget_logo.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _securityText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsDS.purple,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 131,
              ),
              child: WidgetLogo(),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 89,
                left: 20,
                right: 20,
              ),
              child: Column(
                children: [
                  Text(
                    'Entrar na plataforma',
                    style: GoogleFonts.openSans(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBoxComponent.verticalSpaceS40,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'E-mail',
                      style: GoogleFonts.openSans(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBoxComponent.verticalSpaceS12,
                  TextFormField(
                    style: GoogleFonts.openSans(color: ColorsDS.white),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      filled: true,
                      fillColor: Colors.white38,
                      hintText: 'gui.godoi@loomi.com.br',
                      hintStyle: const TextStyle(
                        fontSize: 16,
                        color: Colors.white54,
                      ),
                    ),
                  ),
                  SizedBoxComponent.verticalSpaceS32,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Senha',
                      style: GoogleFonts.openSans(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBoxComponent.verticalSpaceS12,
                  TextFormField(
                    style: GoogleFonts.openSans(color: ColorsDS.white),
                    obscureText: _securityText,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      filled: true,
                      fillColor: Colors.white38,
                      hintText: '******',
                      hintStyle: const TextStyle(
                        color: Colors.white54,
                        fontSize: 16,
                      ),
                      suffixIcon: IconButton(
                        icon: const Icon(
                          MdiIcons.eyeOff,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            _securityText = !_securityText;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBoxComponent.verticalSpaceS40,
                  Button(
                    text: 'Login',
                    press: () {},
                  ),
                  SizedBoxComponent.verticalSpaceS20,
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const SignUpPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Criar conta',
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBoxComponent.verticalSpaceS36,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
