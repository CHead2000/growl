// ignore_for_file: library_private_types_in_public_api

import "package:flutter/material.dart";

void main() => runApp(const MaterialApp(
      home: Review(),
    ));

class Review extends StatefulWidget {
  const Review({Key? key}) : super(key: key);

  @override
  _ReviewState createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  final _textController = TextEditingController();
  String review = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Review Page'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // display text
          children: [
            Text(review, style: const TextStyle(fontSize: 15)),
            // text input
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: TextField(
                      controller: _textController,
                      decoration: InputDecoration(
                        hintText: "Leave a review...",
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                          onPressed: () {
                            _textController.clear();
                          },
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // post button
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      review = _textController.text;
                    });
                    _textController.clear();
                  },
                  color: Colors.blue,
                  child:
                      const Text('Post', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
