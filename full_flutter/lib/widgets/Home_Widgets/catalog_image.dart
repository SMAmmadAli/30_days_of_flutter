import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:full_flutter/widgets/themes.dart';

class catalogImage extends StatelessWidget {
  final String image;
  const catalogImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(image, width: MediaQuery.of(context).size.width/8,),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).canvasColor),
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width / 4,
      height: MediaQuery.of(context).size.height / 3,
    );
  }
}
