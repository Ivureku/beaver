import 'package:flutter/material.dart';
import 'package:proj1/models/card.dart'; // Ensure this import points to the correct file

class CardWidget extends StatelessWidget {
  final CardModel card;

  const CardWidget({Key? key, required this.card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 10.0),
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              card.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            Image.network(
              card.picture,
              height: 200, // Adjust the height as needed
              width: 200, // Make the image width match the card width
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
