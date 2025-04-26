import 'package:cafe_app/components/coffee_tile.dart';
import 'package:cafe_app/models/coffee.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'coffee_shop.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // add coffeee to cart

  void addToCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).addItemToCart(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
        builder: (context, value, child) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(children: [
                  // heading message
                  Text("How would you like your coffee?",
                      style: TextStyle(fontSize: 20)),

                  const SizedBox(height: 25),

                  //list of coffees
                  Expanded(
                      child: ListView.builder(
                          itemCount: value.coffeeShop.length,
                          itemBuilder: (context, index) {
                            //get individual coffee
                            Coffee eachCoffee = value.coffeeShop[index];

                            //return the title fot the coffees
                            return CoffeeTile(
                              coffee: eachCoffee,
                              onPressed: () => addToCart(eachCoffee),
                            );
                          })),
                ]),
              ),
            ));
  }
}
