import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page_intro extends StatelessWidget {
  const Page_intro({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 213, 200),
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(children: [
          SizedBox(
            height: 25,
          ),
          // pizzeria name
          // Text(
          //   "Pizzeria J&Y&D",
          //   style: GoogleFonts.merienda(fontSize: 28),
          // ),
          Text('Pizzeria J&Y&D',
              style: TextStyle(
                  fontFamily: 'dawingOfANewDay',
                  fontSize: 30,
                  color: Color.fromARGB(255, 45, 179, 114))),

          SizedBox(
            height: 25,
          ),
          // image
          Image.asset('lib/images/pizza1é'),

          SizedBox(
            height: 25,
          ),
          // ttitle

          // txt

          // button start
        ]),
      ),
    );
  }
}
