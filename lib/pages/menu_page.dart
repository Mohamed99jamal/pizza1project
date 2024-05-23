import 'package:app1pizza/compenents/button.dart';
import 'package:app1pizza/compenents/pizza_info.dart';
import 'package:app1pizza/models/pizza.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pizza_detaill_page.dart';

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
        desc: 'Crème fraiche, mozzarella, poulet mariné, champignons, origan',
        rating: '3.5'),
    // La 4 fromages
    Pizza(
        id: 2,
        name: 'La 4 fromages',
        price: 55.0,
        imagepath: 'lib/images/La 4 fromages.jpg',
        desc:
            'Sauce tomate, fromage américain, 2 couches de mozzarella, fromage feta et origan',
        rating: '3.8'),
    // La Fruits de Mer
    Pizza(
        id: 3,
        name: 'La Fruits de Mer',
        price: 60.0,
        imagepath: 'lib/images/La Fruits de Mer.jpg',
        desc:
            'Sauce tomate, mozzarella, crevettes, calamars, thon, olives noires, oignons',
        rating: '4.9'),
    // La Veggie
    Pizza(
        id: 4,
        name: 'La Veggie',
        price: 65.0,
        imagepath: 'lib/images/La Veggie.jpg',
        desc:
            'Sauce tomate, mozzarella, oignons, poivrons verts, champignons et olives noires',
        rating: '3'),
    // Poulet barbecue
    Pizza(
        id: 5,
        name: 'Poulet barbecue',
        price: 70.0,
        imagepath: 'lib/images/Poulet barbecue.jpg',
        desc: 'Sauce barbecue, mozzarella, filet de poulet grillé et oignon',
        rating: '4.5'),
  ];

  // navigate
  void navigateToDetaill(int index) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PizzaDetaillPage(
            pizza: pizzas[index],
          ),
        ));
  }

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
          child: IconButton(
            onPressed: () => {},
            icon: Icon(
              Icons.menu_rounded,
              size: 40,
              color: Colors.grey[700],
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 97, top: 20),
          child: Text(
            'PIZZA',
            style: GoogleFonts.merienda(
              fontSize: 25.0,
              color: Colors.grey[700],
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 19),
            child: IconButton(
                onPressed: () => {
                      Navigator.pushNamed(context, '/cmndpage'),
                    },
                icon: Icon(
                  Icons.shopping_cart_rounded,
                  size: 40,
                  color: Colors.grey[700],
                )),
          )
        ],
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
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Search here ..."),
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
                onTap: () => navigateToDetaill(index),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),

          // popular pizza
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'lib/images/La Veggie.jpg',
                        height: 80,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //name
                        Text(
                          "La Veggie",
                          style: GoogleFonts.dmSerifDisplay(fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        //price
                        Text(
                          '65 DH',
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () => {},
                  icon: Icon(
                    Icons.favorite_outline,
                    color: Colors.grey,
                    size: 28,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
