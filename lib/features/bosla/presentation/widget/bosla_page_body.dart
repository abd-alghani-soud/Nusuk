import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:nusuk/core/constants/my_strings.dart';
import 'package:nusuk/features/bosla/presentation/widget/qibla_angle_badge.dart';
import 'package:nusuk/features/bosla/presentation/widget/qibla_compass_visual.dart';
import 'package:nusuk/features/bosla/presentation/widget/qibla_instruction_card.dart';
import '../../../../core/constants/my_colors.dart';

class BoslaPageBody extends StatefulWidget {
  const BoslaPageBody({super.key});

  @override
  State<BoslaPageBody> createState() => _BoslaPageBodyState();
}

class _BoslaPageBodyState extends State<BoslaPageBody> {
  final double _qiblaAngle = 160.3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      appBar: AppBar(
        backgroundColor: MyColors.primary,
        elevation: 0,
        title: const Text(
          'تحديد اتجاه القبلة',
          style: TextStyle(
            color: MyColors.accent,
            fontWeight: FontWeight.bold,
            fontFamily: 'Tajawal',
          ),
        ),
        centerTitle: true,
      ),
      // استخدام StreamBuilder للاستماع لحساس البوصلة
      body: StreamBuilder<CompassEvent>(
        stream: FlutterCompass.events,
        builder: (context, snapshot) {
          // في حال وجود خطأ أو عدم دعم الحساس في الجهاز
          if (snapshot.hasError) {
            return Center(child: Text(MyStrings.err1));
          }
          // انتظر حتى تبدأ البيانات بالتدفق
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(color: Color(0xFF0F4A36)),
            );
          }
          // جلب الاتجاه الحالي (Heading)
          double? direction = snapshot.data?.heading;
          // إذا كان الجهاز لا يحتوي على حساس بوصلة (Magnetometer)
          if (direction == null) {
            return Center(child: Text(MyStrings.err2));
          }
          // 1. حساب اتجاه القبلة بناءً على زاوية الهاتف الحالية
          double qiblaDirection = _qiblaAngle - direction;
          double qiblaRadians = qiblaDirection * (math.pi / 180 * -1);
          // التحقق من المحاذاة مع نسبة خطأ مقبولة ±5 درجات
          bool isAligned = (direction - _qiblaAngle).abs() < 5;
          return Column(
            children: [
              const SizedBox(height: 20),
              // الوجّهات الصغيرة المفصولة مسبقاً تعمل هنا تلقائياً بشكل ديناميكي
              QiblaInstructionCard(isAligned: isAligned),
              const Spacer(),
              QiblaCompassVisual(
                platformDirection: direction ?? 0.0,
                qiblaAngle: _qiblaAngle,
                isAligned: isAligned,
              ),
              const Spacer(),
              QiblaAngleBadge(qiblaAngle: _qiblaAngle),
              const SizedBox(height: 40),
            ],
          );
        },
      ),
    );
  }
}
