import 'package:artapp/constans/fonts.dart';
import 'package:flutter/material.dart';

class ExploreList extends StatelessWidget {
  final Function()? onTap;
  final String title;
  final ShapeBorder shape;
  final Color color;
  const ExploreList({
    super.key,
    this.onTap,
    required this.title,
    required this.shape,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      shape: shape,
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Center(
          child: Text(
            title,
            style: artStyle,
          ),
        ),
      ),
    );
  }
}
