import 'package:app1pizza/compenents/button.dart';
import 'package:app1pizza/pages/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Page_intro extends StatelessWidget {
  const Page_intro({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 213, 200),
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 25,
              ),
              // pizzeria name
              Text(
                "Pizzeria J&Y&D",
                style: GoogleFonts.merienda(
                    fontSize: 44, color: Color.fromARGB(255, 45, 179, 114)),
              ),

              const SizedBox(
                height: 30,
              ),
              // image
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image.asset('lib/images/pizza1.png'),
              ),

              SizedBox(
                height: 25,
              ),
              // ttitle
              Text(
                "THE TASTE OF ITALIAN PIZZA",
                style: GoogleFonts.dmSerifDisplay(
                    fontSize: 44,
                    color: Color.fromARGB(255, 128, 96, 96),
                    height: 1.1),
              ),
              SizedBox(
                height: 8,
              ),
              // txt
              Text(
                "feel the taste of the most delicious italian pizza from anywhere and any time",
                style: GoogleFonts.dmSerifDisplay(
                  height: 1.5,
                  color: Colors.grey[600],
                ),
              ),

              SizedBox(
                height: 50,
              ),
              // button start
              Mybutton(
                txt: "Get Started ",
                onTap: () {
                  Navigator.pushNamed(context, '/menupage');
                },
              ),
            ]),
      ),
    );
  }
}
