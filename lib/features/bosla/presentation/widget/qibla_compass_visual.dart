import 'dart:math' as math;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:nusuk/core/constants/my_images.dart';
import '../../../../core/constants/my_colors.dart';

// 2. وجّهة البوصلة الدوارة وعلامة الهدف

class QiblaCompassVisual extends StatelessWidget {
  final double
  platformDirection; // القيمة القادمة من snapshot.data?.heading مباشرة
  final double qiblaAngle; // زاوية القبلة الثابتة (160.3)
  final bool isAligned;

  const QiblaCompassVisual({
    super.key,
    required this.platformDirection,
    required this.qiblaAngle,
    required this.isAligned,
  });

  @override
  Widget build(BuildContext context) {
    // 1. حساب تدوير خلفية البوصلة (لتشير الاتجاهات إلى أقطاب الأرض الحقيقية)
    double compassRadians = platformDirection * (math.pi / 180 * -1);

    // 2. حساب تدوير السهم (زاوية القبلة - زاوية الهاتف الحالية)
    double qiblaDirection = qiblaAngle - platformDirection;
    double qiblaRadians = qiblaDirection * (math.pi / 180 * -1);

    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          // الدائرة الخارجية الثابتة
          Container(
            child: SvgPicture.asset(MyImages.zakrfa),
            width: 280,
            height: 280,
            decoration: BoxDecoration(
              shape: BoxShape.circle,

              border: Border.all(
                color: isAligned
                    ? const Color(0xFF1B8A5A).withOpacity(0.5)
                    : const Color(0xFF0F4A36).withOpacity(0.1),
                width: 4,
              ),
            ),
          ),

          // الخلفية الدوارة (الاتجاهات الأربعة) - تدور مع أقطاب الأرض
          AnimatedRotation(
            turns: compassRadians / (2 * math.pi),
            duration: const Duration(milliseconds: 200),
            child: SizedBox(
              width: 240,
              height: 240,
              child: Stack(
                alignment: Alignment.center,
                children: const [
                  Positioned(
                    top: 5,
                    child: Text(
                      'N',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        fontSize: 20,
                        fontFamily: 'Tajawal',
                      ),
                    ),
                  ),
                  Positioned(
                    right: 5,
                    child: Text(
                      'E',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Tajawal',
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    child: Text(
                      'S',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Tajawal',
                      ),
                    ),
                  ),
                  Positioned(
                    left: 5,
                    child: Text(
                      'W',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Tajawal',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // أيقونة المسجد (الهدف) - ثابتة في أعلى الشاشة كمؤشر لمقدمة الهاتف
          Positioned(
            top: 10,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isAligned
                    ? MyColors.accent.withOpacity(0.5)
                    : MyColors.background.withOpacity(0.1),
              ),
              child: SvgPicture.asset(MyImages.kaba, height: 30, width: 30),
            ),
          ),

          // السهم الدوّار - يتجه نحو القبلة بشكل مستقل
          AnimatedRotation(
            turns: qiblaRadians / (2 * math.pi),
            duration: const Duration(milliseconds: 200),
            child: SizedBox(
              width: 200,
              height: 200,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 20,
                    child: Icon(
                      Icons.navigation,
                      size: 70,
                      color: isAligned ? MyColors.accent : MyColors.border,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
