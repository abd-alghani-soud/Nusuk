import 'package:flutter/material.dart';
import '../../data/models/hajj_step_models.dart';

class HajjPainter extends CustomPainter {
  final List<HajjStep> steps;
  final int currentStepIndex;

  HajjPainter({required this.steps, required this.currentStepIndex});

  @override
  void paint(Canvas canvas, Size size) {
    if (steps.length < 2) return;
    // 1. إعداد مسار الـ Cubic Bezier
    final Path roadPath = Path();
    roadPath.moveTo(steps[0].position.dx, steps[0].position.dy);

    for (int i = 0; i < steps.length - 1; i++) {
      final p0 = steps[i].position;
      final p1 = steps[i + 1].position;

      // حساب نقاط تحكم (Control Points) تعطي انحناء S-Curve ناعم جداً يشبه الطريق الحقيقي
      final controlY = (p0.dy + p1.dy) / 2;

      roadPath.cubicTo(
        p0.dx,
        controlY, // نقطة التحكم الأولى تتبع النقطة السابقة عمودياً
        p1.dx,
        controlY, // نقطة التحكم الثانية تتبع النقطة التالية عمودياً
        p1.dx,
        p1.dy, // النقطة المستهدفة
      );
    }

    // 2. رسم خلفية الطريق العريضة (تأثير الـ Shadow/Border للطريق)
    final Paint roadBorderPaint = Paint()
      ..color = const Color(0xFFE0E6E4)
      ..style = PaintingStyle.stroke
      ..strokeWidth =
          24.0 // عرض الطريق
      ..strokeCap = StrokeCap.round;
    canvas.drawPath(roadPath, roadBorderPaint);

    // 3. رسم قلب الطريق الداخلي بلون فخم
    final Paint roadInternalPaint = Paint()
      ..color = const Color(0xFFEDF2F0)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 18.0
      ..strokeCap = StrokeCap.round;
    canvas.drawPath(roadPath, roadInternalPaint);

    // 4. رسم الجزء المكتمل من الطريق بلون أخضر متدرج (حسب الخطوة الحالية)
    // لاستخراج الجزء المكتوب بدقة فخمة، سنرسم المسار المكتمل خطوة بخطوة باللون الأخضر المميز
    final Paint completedRoadPaint = Paint()
      ..color = const Color(0xFF81C784).withOpacity(0.7)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 18.0
      ..strokeCap = StrokeCap.round;

    final Path completedPath = Path();
    completedPath.moveTo(steps[0].position.dx, steps[0].position.dy);

    for (int i = 0; i < currentStepIndex; i++) {
      final p0 = steps[i].position;
      final p1 = steps[i + 1].position;
      final controlY = (p0.dy + p1.dy) / 2;

      completedPath.cubicTo(p0.dx, controlY, p1.dx, controlY, p1.dx, p1.dy);
    }

    if (currentStepIndex > 0) {
      canvas.drawPath(completedPath, completedRoadPaint);
    }
  }

  @override
  bool shouldRepaint(covariant HajjPainter oldDelegate) {
    return oldDelegate.currentStepIndex != currentStepIndex;
  }
}
