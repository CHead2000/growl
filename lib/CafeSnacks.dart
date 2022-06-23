// ignore_for_file: unused_import, file_names, unnecessary_string_escapes

import 'package:flutter/material.dart';
import 'package:michiganyelp/main.dart';
import 'package:michiganyelp/CustomCard.dart';

class CafeSnacks extends StatelessWidget {
  const CafeSnacks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffff8c52),
          centerTitle: true,
          title: const Text('Cafes & Snacks'),
          titleTextStyle: const TextStyle(fontSize: 25, color: Colors.white),
          elevation: 10,
        ),
        body: Container(
            alignment: Alignment.center,
            color: const Color(0xffff6b6b),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xffff8c52),
                      onPrimary: Colors.white),
                  child: const Text('Cafes'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Cafe()),
                    );
                  },
                ),
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xffff8c52),
                      onPrimary: Colors.white),
                  child: const Text('Boba'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Boba()),
                    );
                  },
                ),
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xffff8c52),
                      onPrimary: Colors.white),
                  child: const Text('Sweets'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Sweets()),
                    );
                  },
                ),
                const Spacer(),
              ],
            )));
  }
}

class Cafe extends StatelessWidget {
  const Cafe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        backgroundColor: const Color(0xff80cb67),
        centerTitle: true,
        elevation: 10,
        title: const Text('Cafes'),
        titleTextStyle: const TextStyle(fontSize: 25, color: Colors.white),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
        children: const [
          CustomCard(
              locationName: 'Ann Arbor Coffee Roasting Company',
              imageName: 'aacoffeeroastingco.png',
              locationCategory: 'cafes'),
          CustomCard(
              locationName: 'Bert\'s Cafe',
              imageName: 'bertscafe.png',
              locationCategory: 'cafes'),
          CustomCard(
              locationName: 'Cahoots Cafe',
              imageName: 'cahoots.png',
              locationCategory: 'cafes'),
          CustomCard(
              locationName: 'Comet Coffee',
              imageName: 'comet.png',
              locationCategory: 'cafes'),
          CustomCard(
              locationName: 'The Common Cup',
              imageName: 'commoncup.png',
              locationCategory: 'cafes'),
          CustomCard(
              locationName: 'The Drip House',
              imageName: 'driphouse.png',
              locationCategory: 'cafes'),
          CustomCard(
              locationName: 'Hyperion Coffee',
              imageName: 'hyperion.png',
              locationCategory: 'cafes'),
          CustomCard(
              locationName: 'lab cafe',
              imageName: 'labcafe.png',
              locationCategory: 'cafes'),
          CustomCard(
              locationName: 'M36 Coffee Roasters',
              imageName: 'm36.png',
              locationCategory: 'cafes'),
          CustomCard(
              locationName: 'Panera Bread',
              imageName: 'panera.png',
              locationCategory: 'cafes'),
          CustomCard(
              locationName: 'Poindexter Coffee',
              imageName: 'poindexter.png',
              locationCategory: 'cafes'),
          CustomCard(
              locationName: 'RoosRoast Liberty',
              imageName: 'roosroastliberty.png',
              locationCategory: 'cafes'),
          CustomCard(
              locationName: 'Starbucks',
              imageName: 'sbux.png',
              locationCategory: 'cafes'),
          CustomCard(
              locationName: 'Stray Hen Cafe',
              imageName: 'strayhen.png',
              locationCategory: 'cafes'),
          CustomCard(
              locationName: 'Sweetwaters Coffee & Tea',
              imageName: 'sweetwaters.png',
              locationCategory: 'cafes'),
          CustomCard(
              locationName: 'Vertex Coffee Roasters',
              imageName: 'vertex.png',
              locationCategory: 'cafes'),
        ],
      ),
    );
  }
}

class Boba extends StatelessWidget {
  const Boba({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffd5a160),
      appBar: AppBar(
        backgroundColor: const Color(0xffa1591f),
        centerTitle: true,
        elevation: 10,
        title: const Text('Boba'),
        titleTextStyle: const TextStyle(fontSize: 25, color: Colors.white),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
        children: const [
          CustomCard(
              locationName: 'Chatime',
              imageName: 'chatime.png',
              locationCategory: 'boba'),
          CustomCard(
              locationName: 'Ding Tea',
              imageName: 'ding.png',
              locationCategory: 'boba'),
          CustomCard(
              locationName: 'Quickly Boba Cafe',
              imageName: 'quickly.png',
              locationCategory: 'boba'),
          CustomCard(
              locationName: 'Sharetea',
              imageName: 'sharetea.png',
              locationCategory: 'boba'),
          CustomCard(
              locationName: 'Sweeting',
              imageName: 'sweeting.png',
              locationCategory: 'boba'),
          CustomCard(
              locationName: 'Tea Ninja',
              imageName: 'teaninja.png',
              locationCategory: 'boba'),
          CustomCard(
              locationName: 'UniTea',
              imageName: 'unitea.png',
              locationCategory: 'boba'),
        ],
      ),
    );
  }
}

class Sweets extends StatelessWidget {
  const Sweets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffbeef),
      appBar: AppBar(
        backgroundColor: const Color(0xff7fe1dc),
        centerTitle: true,
        elevation: 10,
        title: const Text('Sweets'),
        titleTextStyle: const TextStyle(fontSize: 25, color: Colors.white),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
        children: const [
          CustomCard(
              locationName: 'Ben & Jerry\s',
              imageName: 'ben&jerrys.jpg',
              locationCategory: 'sweets'),
          CustomCard(
              locationName: 'Blank Slate Creamery',
              imageName: 'blankslate.jpg',
              locationCategory: 'sweets'),
          CustomCard(
              locationName: 'Bon Bon Bon',
              imageName: 'bonbonbon.jpg',
              locationCategory: 'sweets'),
          CustomCard(
              locationName: 'Cinnaholic',
              imageName: 'cinnaholic.webp',
              locationCategory: 'sweets'),
          CustomCard(
              locationName: 'Detroit Cookie Company',
              imageName: 'detroitcookie.jpg',
              locationCategory: 'sweets'),
          CustomCard(
              locationName: 'Insomnia Cookies',
              imageName: 'insomnia.jpeg',
              locationCategory: 'sweets'),
          CustomCard(
              locationName: 'Kilwin\s Chocolates',
              imageName: 'kilwins.jpg',
              locationCategory: 'sweets'),
          CustomCard(
              locationName: 'La Dolce Vita',
              imageName: 'ladolcevita.jpg',
              locationCategory: 'sweets'),
          CustomCard(
              locationName: 'Le Bon Macaron',
              imageName: 'lebonmacaron.jfif',
              locationCategory: 'sweets'),
          CustomCard(
              locationName: 'Michigan Creamery',
              imageName: 'michigancreamery.jpg',
              locationCategory: 'sweets'),
          CustomCard(
              locationName: 'Washtenaw Dairy',
              imageName: 'washtenawdairy.jfif',
              locationCategory: 'sweets'),
        ],
      ),
    );
  }
}
