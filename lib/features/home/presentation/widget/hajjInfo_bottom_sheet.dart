import 'package:flutter/material.dart';
import '../../data/models/hajj_step_models.dart';
import 'hajj_supplication_button.dart';

class HajjInfoBottomSheet extends StatelessWidget {
  final HajjStep currentStep;
  final VoidCallback onNextStepPressed;

  const HajjInfoBottomSheet({
    super.key,
    required this.currentStep,
    required this.onNextStepPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: const Color(0xFFFAF6EE),
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF0F4C43).withOpacity(0.06),
            blurRadius: 24,
            offset: const Offset(0, -8),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: RichText(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      text: 'النسك الحالي: ',
                      style: TextStyle(
                        fontSize: 14,
                        color: const Color(0xFF0F4C43).withOpacity(0.6),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Tajawal',
                      ),
                      children: [
                        TextSpan(
                          text: currentStep.title,
                          style: const TextStyle(
                            fontSize: 18,
                            color: Color(0xFF0F4C43),
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFF0F4C43).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  currentStep.location,
                  style: const TextStyle(
                    color: Color(0xFF0F4C43),
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Divider(
              color: const Color(0xFF0F4C43).withOpacity(0.1),
              thickness: 1,
            ),
          ),
          Text(
            currentStep.description,
            textDirection: TextDirection.rtl,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xFF334E4A),
              height: 1.5,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: HajjSupplicationButton(
                  onPressed: () {
                    // كود فتح صفحة الأدعية والأذكار المستحبة
                  },
                ),
              ),
              const SizedBox(width: 12),
              InkWell(
                onTap: onNextStepPressed,
                child: Container(
                  height: 52,
                  width: 52,
                  decoration: BoxDecoration(
                    color: const Color(0xFF0F4C43).withOpacity(0.08),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xFF0F4C43),
                    size: 18,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
