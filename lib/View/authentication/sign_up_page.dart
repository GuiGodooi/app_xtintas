import 'package:app_xtintas/components/button_widget.dart';
import 'package:app_xtintas/components/colors_widget.dart';
import 'package:app_xtintas/components/sized_box_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../components/align_text_widget.dart';
import '../../components/widget_logo.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _securityText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsDS.purple,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 16,
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: 98,
                    bottom: 67,
                  ),
                  child: WidgetLogo(),
                ),
                Text(
                  'Criar Conta',
                  style: GoogleFonts.openSans(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBoxComponent.verticalSpaceS20,
                const AlignTxt(
                  text: 'Nome',
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
                    hintText: 'Nome',
                    hintStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.white54,
                    ),
                  ),
                ),
                SizedBoxComponent.verticalSpaceS16,
                const AlignTxt(
                  text: 'Email',
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
                    hintText: 'test@xtintas.com.br',
                    hintStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.white54,
                    ),
                  ),
                ),
                SizedBoxComponent.verticalSpaceS16,
                const AlignTxt(
                  text: 'Senha',
                ),
                SizedBoxComponent.verticalSpaceS12,
                TextFormField(
                  style: GoogleFonts.openSans(color: ColorsDS.white),
                  keyboardType: TextInputType.emailAddress,
                  obscureText: _securityText,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5),
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
                    filled: true,
                    fillColor: Colors.white38,
                    hintText: '********',
                    hintStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.white54,
                    ),
                  ),
                ),
                SizedBoxComponent.verticalSpaceS16,
                const AlignTxt(
                  text: 'Confirmar senha',
                ),
                SizedBoxComponent.verticalSpaceS12,
                TextFormField(
                  style: GoogleFonts.openSans(color: ColorsDS.white),
                  obscureText: _securityText,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    filled: true,
                    fillColor: Colors.white38,
                    hintText: '********',
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
                    hintStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.white54,
                    ),
                  ),
                ),
                SizedBoxComponent.verticalSpaceS48,
                Button(
                  text: 'Criar conta',
                  press: () {},
                ),
                SizedBoxComponent.verticalSpaceS52,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
