// ignore_for_file: unused_import, file_names

import 'package:flutter/material.dart';
import 'package:michiganyelp/CustomCard.dart';

class StudySpots extends StatelessWidget {
  const StudySpots({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: const Text('Study spots by volume'),
        titleTextStyle: const TextStyle(fontSize: 25, color: Colors.white),
        elevation: 10,
      ),
      body: Container(
          alignment: Alignment.center,
          color: Colors.blueGrey,
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(primary: Colors.brown),
                icon: const Icon(Icons.volume_off),
                label: const Text('Quiet'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const QuietSpots()),
                  );
                },
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(primary: Colors.brown),
                icon: const Icon(Icons.volume_up),
                label: const Text('Study and Chat'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoudSpots()),
                  );
                },
              ),
            ],
          )),
    );
  }
}

class QuietSpots extends StatelessWidget {
  const QuietSpots({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        elevation: 10,
        title: const Text('Quiet Study Spots'),
        titleTextStyle: const TextStyle(fontSize: 25, color: Colors.white),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
        children: const [
          CustomCard(
              locationName: 'Harlan Hatcher Graduate Library',
              imageName: 'hatcherexample.jpg',
              locationCategory: 'quiet'),
          CustomCard(
              locationName: 'Reading Room at the Law Library',
              imageName: 'readingroom.jpg',
              locationCategory: 'quiet'),
          CustomCard(
              locationName: 'Tappan Hall (Fine Arts Library)',
              imageName: 'tappanhall.jpg',
              locationCategory: 'quiet'),
          CustomCard(
              locationName: 'Reading spots @ UMMA',
              imageName: 'umma.jpg',
              locationCategory: 'quiet'),
          CustomCard(
              locationName: 'Basement of Michigan League',
              imageName: 'mleague.jfif',
              locationCategory: 'quiet'),
          CustomCard(
              locationName: 'Weiser Hall 3rd/4th Floor Classrooms',
              imageName: 'weiser.jpg',
              locationCategory: 'quiet'),
          CustomCard(
              locationName: 'Floors 3+ @ Shapiro Undergraduate Library',
              imageName: 'uppershapiro.jfif',
              locationCategory: 'quiet'),
          CustomCard(
              locationName: 'Biomedical Science Research Building',
              imageName: 'bsrb.jpg',
              locationCategory: 'quiet'),
          CustomCard(
              locationName: 'South Thayer Building',
              imageName: 'souththayer.jpg',
              locationCategory: 'quiet'),
        ],
      ),
    );
  }
}

class LoudSpots extends StatelessWidget {
  const LoudSpots({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        elevation: 10,
        title: const Text('Spots to Study and Chat'),
        titleTextStyle: const TextStyle(fontSize: 25, color: Colors.white),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
        children: const [
          CustomCard(
              locationName: 'Angell Hall Entrance Room',
              imageName: 'angell.jpg',
              locationCategory: 'loud'),
          CustomCard(
              locationName: 'Central Campus Classroom Building',
              imageName: 'cccb.jpg',
              locationCategory: 'loud'),
          CustomCard(
              locationName: 'Chemistry Building Atrium',
              imageName: 'chematrium.jpg',
              locationCategory: 'loud'),
          CustomCard(
              locationName: 'The Diag',
              imageName: 'diag.jpg',
              locationCategory: 'loud'),
          CustomCard(
              locationName: 'Fishbowl @ Angell Hall',
              imageName: 'fishbowl.jpg',
              locationCategory: 'loud'),
          CustomCard(
              locationName: 'Kinesiology Building',
              imageName: 'kines.jpg',
              locationCategory: 'loud'),
          CustomCard(
              locationName: 'Michigan League First Floor',
              imageName: 'mleague.jpg',
              locationCategory: 'loud'),
          CustomCard(
              locationName: 'Floor 1+2 @ Shapiro Undergraduate Library',
              imageName: 'shapiro.jfif',
              locationCategory: 'loud'),
          CustomCard(
              locationName: 'UMMA Cafe',
              imageName: 'ummacafe.jpg',
              locationCategory: 'loud'),
          CustomCard(
              locationName: 'The Union',
              imageName: 'union.jpg',
              locationCategory: 'loud'),
        ],
      ),
    );
  }
}
