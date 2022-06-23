// ignore_for_file: unused_import, file_names, unnecessary_string_escapes

import 'package:flutter/material.dart';
import 'package:michiganyelp/CustomCard.dart';

class Eateries extends StatelessWidget {
  const Eateries({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          centerTitle: true,
          title: const Text('Restaurants by price'),
          titleTextStyle: const TextStyle(fontSize: 25, color: Colors.white),
          elevation: 10,
        ),
        body: Container(
            alignment: Alignment.center,
            color: const Color(0xffffe771),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red[400], onPrimary: Colors.white),
                  child: const Text('\$'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CheapFood()),
                    );
                  },
                ),
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red[400], onPrimary: Colors.white),
                  child: const Text('\$\$'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MediumFood()),
                    );
                  },
                ),
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red[400], onPrimary: Colors.white),
                  child: const Text('\$\$\$'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ExpensiveFood()),
                    );
                  },
                ),
                const Spacer(),
              ],
            )));
  }
}

class CheapFood extends StatelessWidget {
  const CheapFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffe771),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        elevation: 10,
        title: const Text('Food (\$)'),
        titleTextStyle: const TextStyle(fontSize: 25, color: Colors.white),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
        children: const [
          CustomCard(
              locationName: 'Chicago Reds Windy City Hot Dogs',
              imageName: 'chicacoreds.jpg',
              locationCategory: 'cheapfood'),
          CustomCard(
              locationName: 'Chipotle',
              imageName: 'chipotle.jpeg',
              locationCategory: 'cheapfood'),
          CustomCard(
              locationName: 'Condado Tacos',
              imageName: 'condados.jfif',
              locationCategory: 'cheapfood'),
          CustomCard(
              locationName: 'Cottage Inn Pizza',
              imageName: 'cottageinn.jpg',
              locationCategory: 'cheapfood'),
          CustomCard(
              locationName: 'Domino\'s Pizza',
              imageName: 'dominos.jfif',
              locationCategory: 'cheapfood'),
          CustomCard(
              locationName: 'Hola Seoul',
              imageName: 'holaseoul.jpg',
              locationCategory: 'cheapfood'),
          CustomCard(
              locationName: 'No Thai!',
              imageName: 'nothai.jpg',
              locationCategory: 'cheapfood'),
          CustomCard(
              locationName: 'New York Pizza Depot',
              imageName: 'nypd.jpg',
              locationCategory: 'cheapfood'),
          CustomCard(
              locationName: 'Pancheros Mexican Grill',
              imageName: 'panch.jpg',
              locationCategory: 'cheapfood'),
          CustomCard(
              locationName: 'Pita Kabob Grill',
              imageName: 'pitakabob.webp',
              locationCategory: 'cheapfood'),
          CustomCard(
              locationName: 'Pizza Bob\'s',
              imageName: 'pizzabobs.jfif',
              locationCategory: 'cheapfood'),
          CustomCard(
              locationName: 'Poke Poke - Sushi Unrolled',
              imageName: 'pokepoke.jpg',
              locationCategory: 'cheapfood'),
          CustomCard(
              locationName: 'Potbelly Sandwich Shop',
              imageName: 'potbelly.jfif',
              locationCategory: 'cheapfood'),
          CustomCard(
              locationName: 'Ray\'s Red Hots',
              imageName: 'rays.jpg',
              locationCategory: 'cheapfood'),
          CustomCard(
              locationName: 'Rich J.C. | Korean Restaurant',
              imageName: 'richjc.jpg',
              locationCategory: 'cheapfood'),
          CustomCard(
              locationName: 'Subway',
              imageName: 'subway.jpg',
              locationCategory: 'cheapfood'),
          CustomCard(
              locationName: 'Toarmina\'s Pizza & Burrito Joint',
              imageName: 'toarminas.jfif',
              locationCategory: 'cheapfood'),
        ],
      ),
    );
  }
}

class MediumFood extends StatelessWidget {
  const MediumFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffe771),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        elevation: 10,
        title: const Text('Food (\$\$)'),
        titleTextStyle: const TextStyle(fontSize: 25, color: Colors.white),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
        children: const [
          CustomCard(
              locationName: 'Angelo\'s',
              imageName: 'angelos.jpg',
              locationCategory: 'mediumfood'),
          CustomCard(
              locationName: 'Avalon Cafe and Kitchen',
              imageName: 'avalon.webp',
              locationCategory: 'mediumfood'),
          CustomCard(
              locationName: 'Buffalo Wild Wings',
              imageName: 'bdubs.jpg',
              locationCategory: 'mediumfood'),
          CustomCard(
              locationName: 'Frita Batidos',
              imageName: 'frita.jpg',
              locationCategory: 'mediumfood'),
          CustomCard(
              locationName: 'Hopcat',
              imageName: 'hopcat.png',
              locationCategory: 'mediumfood'),
          CustomCard(
              locationName: 'The Jagged Fork',
              imageName: 'jaggedfork.jpg',
              locationCategory: 'mediumfood'),
          CustomCard(
              locationName: 'Jamaican Jerk Pit',
              imageName: 'jjp.jpg',
              locationCategory: 'mediumfood'),
          CustomCard(
              locationName: 'Joe\s Pizza NYC',
              imageName: 'joes.jpeg',
              locationCategory: 'mediumfood'),
          CustomCard(
              locationName: 'Jolly Pumpkin Cafe & Brewery',
              imageName: 'jollypumpkin.jpg',
              locationCategory: 'mediumfood'),
          CustomCard(
              locationName: 'Lan City Noodle Bar',
              imageName: 'lancity.webp',
              locationCategory: 'mediumfood'),
          CustomCard(
              locationName: 'Maize and Blue Delicatessen',
              imageName: 'maizenblue.jpg',
              locationCategory: 'mediumfood'),
          CustomCard(
              locationName: 'Mani Osteria and Bar',
              imageName: 'maniosteria.jfif',
              locationCategory: 'mediumfood'),
          CustomCard(
              locationName: 'One Bowl Asian Cuisine',
              imageName: 'onebowl.jpg',
              locationCategory: 'mediumfood'),
          CustomCard(
              locationName: 'Pizza House',
              imageName: 'pizzahouse.jpg',
              locationCategory: 'mediumfood'),
          CustomCard(
              locationName: 'Sadako Japanese Restaurant',
              imageName: 'sadako.jpg',
              locationCategory: 'mediumfood'),
          CustomCard(
              locationName: 'Slurping Turtle',
              imageName: 'slurpingturtle.jfif',
              locationCategory: 'mediumfood'),
          CustomCard(
              locationName: 'TK WU',
              imageName: 'tkwu.jfif',
              locationCategory: 'mediumfood'),
          CustomCard(
              locationName: 'Tomukun Korean BBQ',
              imageName: 'tomukun.jfif',
              locationCategory: 'mediumfood'),
          CustomCard(
              locationName: 'Tomukun Noodle Bar',
              imageName: 'tomukun2.jpg',
              locationCategory: 'mediumfood'),
          CustomCard(
              locationName: 'Zingerman\'s Delicatessen',
              imageName: 'zinger.jpg',
              locationCategory: 'mediumfood'),
        ],
      ),
    );
  }
}

class ExpensiveFood extends StatelessWidget {
  const ExpensiveFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffe771),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        elevation: 10,
        title: const Text('Food (\$\$\$)'),
        titleTextStyle: const TextStyle(fontSize: 25, color: Colors.white),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
        children: const [
          CustomCard(
              locationName: 'Aventura',
              imageName: 'aventura.png',
              locationCategory: 'expensivefood'),
          CustomCard(
              locationName: 'Black Pearl',
              imageName: 'blackpearl.jpeg',
              locationCategory: 'expensivefood'),
          CustomCard(
              locationName: 'The Chop House',
              imageName: 'chophouse.jpg',
              locationCategory: 'expensivefood'),
          CustomCard(
              locationName: 'The Earle Restaurant',
              imageName: 'earlerestaurant.jpg',
              locationCategory: 'expensivefood'),
          CustomCard(
              locationName: 'Gandy Dancer',
              imageName: 'gandydancer.jpeg',
              locationCategory: 'expensivefood'),
          CustomCard(
              locationName: 'Pacific Rim By Kana',
              imageName: 'pacificrim.jpg',
              locationCategory: 'expensivefood'),
          CustomCard(
              locationName: 'Real Seafood Company',
              imageName: 'realseafoodcompany.jpg',
              locationCategory: 'expensivefood'),
          CustomCard(
              locationName: 'Ruth\s Chris Steak House',
              imageName: 'ruthchris.jfif',
              locationCategory: 'expensivefood'),
          CustomCard(
              locationName: 'Taste Kitchen',
              imageName: 'tastekitchen.jpg',
              locationCategory: 'expensivefood'),
          CustomCard(
              locationName: 'The West End Grill',
              imageName: 'westend.jpg',
              locationCategory: 'expensivefood'),
        ],
      ),
    );
  }
}
