import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'animation.dart';
import 'package:apps/main.dart';
import 'homePage.dart';

class inscrirePage extends StatelessWidget {
  const inscrirePage({Key? key}) : super(key: key);

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
            size: 20,
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
              delay: 500,
              child: Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    Text(
                      "Inscription ",
                      style: GoogleFonts.poppins(
                        color: d_red,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            inscrireForm(),
            SizedBox(height: 20),
            Text(
              "* Champ obligatoir.",
              style: GoogleFonts.poppins(
                color: Color.fromARGB(255, 4, 32, 189),
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            DalayedAnimation(
                delay: 1000,
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
                              builder: (context) => homePage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary: d_red,
                            padding: EdgeInsets.all(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Enregistrer",
                              style: GoogleFonts.poppins(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class inscrireForm extends StatefulWidget {
  @override
  State<inscrireForm> createState() => _inscrireFormState();
}

class _inscrireFormState extends State<inscrireForm> {
  var _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: [
          DalayedAnimation(
            delay: 800,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Nom *',
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 36, 36, 36),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          DalayedAnimation(
            delay: 800,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Prénom *',
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 36, 36, 36),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          DalayedAnimation(
            delay: 800,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Email *',
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 36, 36, 36),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          DalayedAnimation(
            delay: 800,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Téléphone * ',
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 36, 36, 36),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          DalayedAnimation(
            delay: 800,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Comune de résidence * ',
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 36, 36, 36),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          DalayedAnimation(
            delay: 800,
            child: TextField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 36, 36, 36),
                ),
                labelText: ' Mot de passe * ',
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.visibility,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          DalayedAnimation(
            delay: 800,
            child: TextField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 36, 36, 36),
                ),
                labelText: 'Confirmation de mot de passe  * ',
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.visibility,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
