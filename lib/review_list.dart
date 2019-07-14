import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/cesar.jpg", "Cesar Murillo", "2 Stars ", "There is an Amazing place in Sri Lanka"),
        Review("assets/img/girl.jpg", "Cesar Murillo", "2 Stars ", "There is an Amazing place in Sri Lanka"),
        Review("assets/img/people.jpg", "Cesar Murillo", "2 Stars ", "There is an Amazing place in Sri Lanka")
      ],
    );
  }
}