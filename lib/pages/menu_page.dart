import 'package:app1pizza/compenents/button.dart';
import 'package:app1pizza/compenents/pizza_info.dart';
import 'package:app1pizza/models/pizza.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class Menu_page extends StatefulWidget {
  const Menu_page({super.key});

  @override
  State<Menu_page> createState() => _Menu_pageState();
}

class _Menu_pageState extends State<Menu_page> {
  List pizzas = [
    // Chicken Alfredo
    Pizza(
        id: 1,
        name: 'Chicken Alfredo',
        price: 50.0,
        imagepath: 'lib/images/Chicken Alfredo.jpg',
        rating: '3.5'),
    // La 4 fromages
    Pizza(
        id: 2,
        name: 'La 4 fromages',
        price: 55.0,
        imagepath: 'lib/images/La 4 fromages.jpg',
        rating: '3.8'),
    // La Fruits de Mer
    Pizza(
        id: 3,
        name: 'La Fruits de Mer',
        price: 60.0,
        imagepath: 'lib/images/La Fruits de Mer.jpg',
        rating: '4.9'),
    // La Veggie
    Pizza(
        id: 4,
        name: 'La Veggie',
        price: 65.0,
        imagepath: 'lib/images/La Veggie.jpg',
        rating: '3'),
    // Poulet barbecue
    Pizza(
        id: 5,
        name: 'Poulet barbecue',
        price: 70.0,
        imagepath: 'lib/images/Poulet barbecue.jpg',
        rating: '4.5'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 70,
        leading: Padding(
          padding: const EdgeInsets.only(left: 40.0, top: 20),
          child: Icon(
            Icons.menu,
            size: 40,
            color: Color.fromARGB(255, 62, 177, 51),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 97, top: 20),
          child: Text(
            'PIZZA',
            style: GoogleFonts.merienda(
              fontSize: 25.0,
              color: Color.fromARGB(255, 62, 177, 51),
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 216, 142, 120),
                borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.only(left: 25, right: 25, top: 20),
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Get 20% Promo',
                      style: GoogleFonts.dmSerifDisplay(
                          fontSize: 20, color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Mybutton(txt: "Redeem", onTap: () {})
                  ],
                ),
                Image.asset(
                  'lib/images/pizza2.png',
                  height: 130,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),

          //search
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 29),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: const Color.fromARGB(255, 161, 84, 84)),
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Pizza Menu",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                  fontSize: 18),
            ),
          ),

          SizedBox(
            height: 10,
          ),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: pizzas.length,
              itemBuilder: (context, index) => PizzaInfo(
                pizza: pizzas[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}
