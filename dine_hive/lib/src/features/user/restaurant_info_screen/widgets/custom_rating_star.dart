import 'package:flutter/material.dart';

class RatingStar extends StatelessWidget {
  final double rating; // Rating value from 0 to 5
  final double maxRating;
  final double size;
  final Color filledColor;
  final Color borderColor;
  final Color emptyColor;

  const RatingStar({
    super.key,
    required this.rating,
    this.maxRating = 5.0,
    this.size = 28,
    this.filledColor = Colors.orange,
    this.borderColor = Colors.orange,
    this.emptyColor = Colors.white, // White empty star
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Border star
        Icon(
          Icons.star,
          size: size,
          color: borderColor, // Border color
        ),
        // Empty star
        Icon(
          Icons.star,
          size: size * 0.75,
          color: emptyColor,
        ),
        // Filled portion
        ClipRect(
          clipper: _StarClipper(rating / maxRating),
          child: Icon(
            Icons.star,
            size: size * 0.75,
            color: filledColor,
          ),
        ),
      ],
    );
  }
}

class _StarClipper extends CustomClipper<Rect> {
  final double fillPercentage;

  _StarClipper(this.fillPercentage);

  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, size.width * fillPercentage, size.height);
  }

  @override
  bool shouldReclip(_StarClipper oldClipper) {
    return oldClipper.fillPercentage != fillPercentage;
  }
}
