import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardTrailingImage extends StatelessWidget {
  final String imagePath;

  const CardTrailingImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: imagePath.endsWith('.svg')
            ? SvgPicture.asset(
                imagePath,
                height: 60,
                width: 60,
                placeholderBuilder: (_) => const CircularProgressIndicator(),
              )
            : Image.asset(imagePath, width: 60, height: 60),
      ),
    );
  }
}
