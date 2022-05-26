import 'package:apps/connect_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'animation.dart';
import 'package:apps/main.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 60,
            horizontal: 30,
          ),
          child: Column(
            children: [
              DalayedAnimation(
                delay: 1500,
                child: Container(
                  height: 200,
                  child: Image.asset('images/logo.jpg'),
                ),
              ),
              DalayedAnimation(
                delay: 2000,
                child: Container(
                  height: 80,
                  child: Text(
                    "Pass Pass ",
                    style: GoogleFonts.poppins(
                      color: d_red,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              DalayedAnimation(
                delay: 3000,
                child: Container(
                  child: Image.asset('images/couv1.jpg'),
                ),
              ),
              DalayedAnimation(
                delay: 4000,
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: d_red,
                        shape: StadiumBorder(),
                        padding: EdgeInsets.all(13)),
                    child: Text('GET STARTED'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => connectPage(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
