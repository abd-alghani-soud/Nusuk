import 'package:flutter/material.dart';
import '../../../../core/constants/my_strings.dart';

// 3. وجّهة شارة زاوية القبلة
class QiblaAngleBadge extends StatelessWidget {
  final double qiblaAngle;

  const QiblaAngleBadge({super.key, required this.qiblaAngle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF0F4A36).withOpacity(0.06),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.explore, color: Color(0xFF0F4A36), size: 18),
          const SizedBox(width: 8),
          Text(
            '${MyStrings.qiblaAngle} $qiblaAngle°',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFF0F4A36),
              fontFamily: 'Tajawal',
            ),
          ),
        ],
      ),
    );
  }
}
