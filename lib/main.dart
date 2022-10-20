import 'package:app_xtintas/View/authentication/login_page.dart';
import 'package:app_xtintas/View/authentication/sign_up_page.dart';
import 'package:app_xtintas/View/tutorial_page.dart';
import 'package:app_xtintas/model/repository/paint_repository.dart';
import 'package:app_xtintas/presenter/get_on_cart_presenter.dart';
import 'package:app_xtintas/presenter/login_presenter.dart';
import 'package:app_xtintas/presenter/paint_presenter.dart';
import 'package:app_xtintas/presenter/register_presenter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'View/home_page.dart';
import 'model/repository/get_on_cart_repository.dart';
import 'model/repository/login_repository.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PaintPresenter(
            PaintRepository(),
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => LoginPresenter(
            LoginRepository(),
          ),
        ),
        ChangeNotifierProvider<SignUpPresenter>(
          create: (context) => SignUpPresenter(),
        ),
        ChangeNotifierProvider(
          create: (context) => GetOnCartPresenter(
            GetOnCartRepository(),
          ),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'XTintas',
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/signup': (context) => const SignUpPage(),
        '/tutorial': (context) => const TutorialPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
