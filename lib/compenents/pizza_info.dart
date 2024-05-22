import 'package:app1pizza/models/pizza.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PizzaInfo extends StatelessWidget {
  final Pizza pizza;
  final void Function()? onTap;
  const PizzaInfo({super.key, required this.pizza, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.only(bottom: 15),
        margin: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Image.asset(
                pizza.imagepath,
                height: 200,
              ),
            ),
            Text(
              pizza.name,
              style: GoogleFonts.merienda(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 160,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //prix
                  Text(
                    pizza.price.toString() + ' DH',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey[700]),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  // rat
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        fill: (double.parse(pizza.rating) * 2) / 100,
                        color: Colors.yellow[800],
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        pizza.rating,
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
