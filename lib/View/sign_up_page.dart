import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'components/widget_logo.dart';

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
      backgroundColor: const Color.fromRGBO(91, 77, 167, 1),
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
                const Text(
                  'Criar Conta',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Nome',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    filled: true,
                    fillColor: Colors.white38,
                    hintText: 'Guilherme',
                    hintStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.white54,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                TextFormField(
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
                const SizedBox(
                  height: 17,
                ),
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Senha',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                TextFormField(
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
                const SizedBox(
                  height: 17,
                ),
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Confirmar Senha',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    filled: true,
                    fillColor: Colors.white38,
                    hintText: '********',
                    suffixIcon: const Icon(
                      MdiIcons.eyeOff,
                      color: Colors.white,
                    ),
                    hintStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.white54,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 46,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 15),
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: const Text(
                    'Criar Conta',
                    style: TextStyle(
                      color: Color.fromRGBO(91, 77, 167, 1),
                      fontSize: 16,
                    ),
                  ),
                ),
                _elevatedButtomP('oi', () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _elevatedButtomP(String text, Function()? onPressed) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
      foregroundColor: Colors.black,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
    ),
    child: Text(
      text,
      style: const TextStyle(
        color: Color.fromRGBO(91, 77, 167, 1),
        fontSize: 16,
      ),
    ),
  );
}
