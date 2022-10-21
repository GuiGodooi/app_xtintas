import 'package:app_xtintas/View/authentication/login_page.dart';
import 'package:app_xtintas/components/colors_widget.dart';
import 'package:app_xtintas/components/sized_box_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsDS.whiteBG,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Text(
                'Perfil',
                style: GoogleFonts.openSans(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: ColorsDS.whiteBG,
                height: 124,
                width: 330,
                child: ListView(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      elevation: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(10),
                            child: CircleAvatar(
                              radius: 48, // Image radius
                              backgroundImage: NetworkImage(
                                  'https://1.bp.blogspot.com/-KLg5TEY1v6U/T6P9I6YPZwI/AAAAAAAABEc/iYpstw_ouMQ/s1600/Mr_bean.jpg',
                                  scale: 10),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 70),
                            child: Text(
                              'Guilherme Godoi',
                              style: GoogleFonts.openSans(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBoxComponent.verticalSpaceS24,
                    Card(
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Align(
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return LoginPage();
                                  },
                                ),
                              );
                            },
                            child: Text(
                              'Fazer Logout',
                              style: GoogleFonts.openSans(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: ColorsDS.purple,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
