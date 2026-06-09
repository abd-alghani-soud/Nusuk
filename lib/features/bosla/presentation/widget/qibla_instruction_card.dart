import 'package:flutter/material.dart';
import 'package:nusuk/core/constants/my_colors.dart';
import 'package:nusuk/core/constants/my_strings.dart';

// 1. وجّهة بطاقة الإرشادات
class QiblaInstructionCard extends StatelessWidget {
  final bool isAligned;

  const QiblaInstructionCard({super.key, required this.isAligned});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.04),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(
              isAligned ? Icons.check_circle : Icons.screen_rotation,
              color: isAligned
                  ? MyColors.primary
                  : MyColors.accent,
              size: 28,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                isAligned ? MyStrings.qiblaCorrect : MyStrings.note,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[800],
                  height: 1.4,
                  fontFamily: 'Tajawal',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
