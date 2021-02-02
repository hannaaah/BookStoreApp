import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Rating extends StatelessWidget {
  final double rating;
  Rating(this.rating);
  @override
  Widget build(BuildContext context) {
    return SmoothStarRating(
      isReadOnly: true,
      allowHalfRating: true,
      rating: rating,
      size: 18,
      defaultIconData: Icons.star,
      color: Colors.orangeAccent,
      borderColor: Colors.grey[300],
    );
  }
}
