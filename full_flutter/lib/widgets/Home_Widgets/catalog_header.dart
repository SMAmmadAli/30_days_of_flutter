import 'package:flutter/material.dart';
import 'package:full_flutter/widgets/themes.dart';

class catologHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Catalog App",
          style: TextStyle(
            color: Theme.of(context).secondaryHeaderColor,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
          ),
        ),
        Text(
          "Trending products",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
