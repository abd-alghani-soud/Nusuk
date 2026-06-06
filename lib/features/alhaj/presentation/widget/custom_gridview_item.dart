import 'package:flutter/material.dart';

class CustomGridViewItem extends StatelessWidget {
  const CustomGridViewItem({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.onTap,
  });

  final String imageUrl;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Image.asset(imageUrl, height: 150, width: 150),
            Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
