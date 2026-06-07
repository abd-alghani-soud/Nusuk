import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // استيراد المكتبة

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
    final bool isSvg = imageUrl.toLowerCase().endsWith('.svg');

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isSvg
                ? SvgPicture.asset(
              imageUrl,
              height: 120,
              width: 120,
              fit: BoxFit.contain,

            )
                : Image.asset(
              imageUrl,
              height: 100,
              width: 100,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 12),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}