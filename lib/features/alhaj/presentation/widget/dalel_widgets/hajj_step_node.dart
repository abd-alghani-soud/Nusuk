import 'package:flutter/material.dart';
import '../../../data/models/hajj_step_models.dart';

class HajjStepNode extends StatelessWidget {
  final HajjStep step;
  final int index;
  final bool isCurrent;
  final bool isCompleted;
  final VoidCallback onNodeTap;

  const HajjStepNode({
    super.key,
    required this.step,
    required this.index,
    required this.isCurrent,
    required this.isCompleted,
    required this.onNodeTap,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: step.position.dx - 35,
      top: step.position.dy - 35,
      child: GestureDetector(
        onTap: onNodeTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: isCurrent ? 70 : 56,
              height: isCurrent ? 70 : 56,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: isCurrent
                      ? [const Color(0xFFFAF6EE), const Color(0xFF0F4C43)]
                      : (isCompleted
                            ? [
                                const Color(0xFFFAF6EE),
                                const Color(0xFF0F4C43).withOpacity(0.7),
                              ]
                            : [Colors.white, const Color(0xFFCFD8DC)]),
                  center: const Alignment(-0.2, -0.2),
                  radius: 0.6,
                ),
                boxShadow: [
                  BoxShadow(
                    color: isCurrent
                        ? const Color(0xFF0F4C43).withOpacity(0.3)
                        : Colors.black.withOpacity(0.05),
                    blurRadius: isCurrent ? 16 : 8,
                    spreadRadius: isCurrent ? 4 : 0,
                    offset: const Offset(0, 6),
                  ),
                ],
                border: Border.all(
                  color: isCurrent ? const Color(0xFF0F4C43) : Colors.white,
                  width: isCurrent ? 3 : 2,
                ),
              ),
              child: Center(
                child: isCompleted
                    ? const Icon(Icons.done_all, color: Colors.white, size: 24)
                    : Icon(
                        index == 1 ? Icons.mosque : Icons.directions_walk,
                        color: isCurrent ? Colors.white : Colors.grey.shade700,
                        size: isCurrent ? 28 : 22,
                      ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: isCurrent ? const Color(0xFF0F4C43) : Colors.transparent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                step.title,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: isCurrent ? FontWeight.bold : FontWeight.w600,
                  color: isCurrent
                      ? Colors.white
                      : const Color(0xFF0F4C43).withOpacity(0.7),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
