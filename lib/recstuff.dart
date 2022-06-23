import 'package:flutter/material.dart';
import 'package:michiganyelp/CustomCard.dart';

class RecStuff extends StatelessWidget {
  const RecStuff({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff000f77),
      appBar: AppBar(
        backgroundColor: const Color(0xffff6300),
        centerTitle: true,
        elevation: 10,
        title: const Text('Recreational Activities'),
        titleTextStyle: const TextStyle(fontSize: 25, color: Colors.white),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
        children: const [
          CustomCard(locationName: 'Nichols Arboretum', imageName: 'arb.jfif', locationCategory: 'recstuff'),
          CustomCard(locationName: 'Central Campus Recreation Building', imageName: 'ccrb.webp', locationCategory: 'recstuff'),
          CustomCard(locationName: 'Intramural Sports Building', imageName: 'im.jfif', locationCategory: 'recstuff'),
          CustomCard(locationName: 'Museum of Natural History', imageName: 'museumnaturalhistory.jpg', locationCategory: 'recstuff'),
          CustomCard(locationName: 'North Campus Recreation Building', imageName: 'ncrb.jpg', locationCategory: 'recstuff'),
          CustomCard(locationName: 'Palmer Field', imageName: 'palmerfield.png', locationCategory: 'recstuff'),
          CustomCard(locationName: 'University of Michigan Museum of Art', imageName: 'umma.jpg', locationCategory: 'recstuff'),
        ],
      ),
    );
  }
}