import 'package:apps/inscrire_page.dart';
import 'package:apps/loginEmail_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'animation.dart';
import 'package:apps/main.dart';

class connectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 45,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DalayedAnimation(
              delay: 1000,
              child: Container(
                height: 280,
                child: Image.asset('images/couv3.jpg'),
              ),
            ),
            DalayedAnimation(
              delay: 1000,
              child: Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: 30,
                ),
                child: Column(
                  children: [
                    Text(
                      "Le covoiturage en toute sérénité",
                      style: GoogleFonts.poppins(
                        color: d_red,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Une expérience unique pour voyager partout au Maroc",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Color.fromARGB(255, 105, 107, 116),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            DalayedAnimation(
                delay: 1500,
                child: Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 14,
                    horizontal: 40,
                  ),
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => inscrirePage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary: d_red,
                            padding: EdgeInsets.all(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(FontAwesomeIcons.user),
                            SizedBox(width: 12),
                            Text(
                              "S'inscrire",
                              style: GoogleFonts.poppins(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => loginEmail(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary: Color.fromARGB(255, 105, 107, 116),
                            padding: EdgeInsets.all(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.email),
                            SizedBox(width: 12),
                            Text(
                              'Email',
                              style: GoogleFonts.poppins(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => loginEmail(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary: Color.fromARGB(255, 255, 255, 255),
                            padding: EdgeInsets.all(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/logoG.png',
                              height: 20,
                            ),
                            SizedBox(width: 12),
                            Text(
                              'Google',
                              style: GoogleFonts.poppins(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
