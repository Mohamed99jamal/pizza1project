import 'package:app1pizza/compenents/button.dart';
import 'package:app1pizza/models/pizza.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PizzaDetaillPage extends StatefulWidget {
  final Pizza pizza;
  const PizzaDetaillPage({super.key, required this.pizza});

  @override
  State<PizzaDetaillPage> createState() => _PizzaDetaillPageState();
}

class _PizzaDetaillPageState extends State<PizzaDetaillPage> {
  int quantitycount = 0;
  void decrement() {
    setState(() {
      if (quantitycount > 0) quantitycount--;
    });
  }

  void increment() {
    setState(() {
      quantitycount++;
    });
  }

  void addToCart() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          //list pizzas
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ListView(
              children: [
                // image
                ClipRRect(
                  borderRadius: BorderRadius.circular(2),
                  child: Image.asset(
                    widget.pizza.imagepath,
                    height: 300,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                // rating
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      // fill: (double.parse(widget.pizza.rating) * 2) / 100,
                      color: Colors.yellow[800],
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      widget.pizza.rating,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                // name
                Text(
                  widget.pizza.name,
                  style: GoogleFonts.dmSerifDisplay(fontSize: 30),
                ),
                SizedBox(
                  height: 25,
                ),

                // description
                Text(
                  "Description",
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.pizza.desc,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 16,
                    height: 2,
                  ),
                ),
              ],
            ),
          )),
          // price + Q + add to commande
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            color: Colors.grey[300],
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.pizza.price.toString() + ' DH',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: Icon(Icons.remove),
                            color: Colors.white,
                            onPressed: decrement,
                          ),
                        ),
                        SizedBox(
                          width: 40,
                          child: Center(
                            child: Text(
                              quantitycount.toString(),
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: Icon(Icons.add),
                            color: Colors.white,
                            onPressed: increment,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Mybutton(
                  txt: 'Add To Cart',
                  onTap: addToCart,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
