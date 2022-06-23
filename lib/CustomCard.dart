// ignore_for_file: unused_import, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';
import 'package:michiganyelp/review.dart';

class CustomCard extends StatelessWidget {
  final String locationName;
  final String imageName;
  final String locationCategory;

  const CustomCard(
      {required this.locationName,
      required this.imageName,
      required this.locationCategory});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Review()),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        height: 210,
        child: Card(
          color: Colors.white,
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  'images/$locationCategory/$imageName',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 120,
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black.withOpacity(.9),
                      Colors.transparent,
                    ],
                  )),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                padding: const EdgeInsets.all(10),
                child: Text(locationName,
                    style: const TextStyle(fontSize: 20, color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
