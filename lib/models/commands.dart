import 'pizza.dart';

class Command {
  final List<Pizza> pizzas = [
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

  //list commands
  List<Pizza> commands = [];
  //getrs
  List<Pizza> get pizzaM => pizzas;
  List<Pizza> get comnds => commands;

  //methods crud
  //add to command
  void addToCommand(Pizza pizza, int Quantity) {
    for (var i = 0; i < Quantity; i++) {
      commands.add(pizza);
    }
  }
}
