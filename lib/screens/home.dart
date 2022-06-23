import 'package:flutter/material.dart';
import 'package:michiganyelp/CafeSnacks.dart';
import 'package:michiganyelp/Restaurants.dart';
import 'package:michiganyelp/StudyLocations.dart';
import 'package:michiganyelp/recstuff.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff000f77),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: const Text('Growl'),
            titleTextStyle: const TextStyle(fontSize: 45, color: Colors.yellow),
          ),
          const Spacer(),
          ElevatedButton.icon(
            icon: const Icon(Icons.book),
            label: const Text('Study Spooooooooots'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const StudySpots()),
              );
            },
          ),
          const Spacer(),
          ElevatedButton.icon(
            icon: const Icon(Icons.restaurant),
            label: const Text('Eateries'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Eateries()),
              );
            },
          ),
          const Spacer(),
          ElevatedButton.icon(
            icon: const Icon(Icons.coffee),
            label: const Text('Cafes/Snacks'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CafeSnacks()),
              );
            },
          ),
          const Spacer(),
          ElevatedButton.icon(
            icon: const Icon(Icons.sports_gymnastics),
            label: const Text('Stuff To Do'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RecStuff()),
              );
            },
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
