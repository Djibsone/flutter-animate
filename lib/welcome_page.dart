import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/social_page.dart';
import 'package:flutter_animate/delayed_animation.dart';
import 'package:flutter_animate/main.dart';


class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 60,
            horizontal: 30,
          ),
          child: Column(
            children: [
              DelayedAnimation(
                delay: 1500,
                child: Container(
                  height: 170,
                  child: Image.asset('images/yoga_1.png'),
                ),
              ),
              DelayedAnimation(
                delay: 2500,
                child: Container(
                  height: 400,
                  child: Image.asset('images/yoga_2.jpeg'),
                ),
              ),
              DelayedAnimation(
                delay: 3500,
                child: Container(
                  margin: EdgeInsets.only(
                    top: 30,
                    bottom: 20,
                  ),
                  child: Text(
                    "Obtenez une meilleure forme physique, de la force, et adoptez un mode de vie plus sain.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              DelayedAnimation(
                delay: 4500,
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: d_red,
                        shape: StadiumBorder(),
                        padding: EdgeInsets.all(13)),
                    child: Text('COMMENCER'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SocialPage(),
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