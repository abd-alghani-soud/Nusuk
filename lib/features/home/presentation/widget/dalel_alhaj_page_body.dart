import 'package:flutter/material.dart';
import 'package:nusuk/core/constants/my_strings.dart';
import '../../data/models/hajj_step_models.dart';
import '../widget/hajj_painter.dart';
import 'hajjInfo_bottom_sheet.dart';
import 'hajj_step_node.dart';

class DalelAlhajPageBody extends StatefulWidget {
  const DalelAlhajPageBody({super.key});

  @override
  State<DalelAlhajPageBody> createState() => _DalelAlhajPageBodyState();
}

class _DalelAlhajPageBodyState extends State<DalelAlhajPageBody> {
  final ScrollController _scrollController = ScrollController();
  int currentStepIndex = 0;
  final List<HajjStep> steps = [
    HajjStep(
      title: MyStrings.dalel1,
      description: MyStrings.dDalel1,
      location: MyStrings.lDalel1,
      position: const Offset(80, 100),
    ),
    HajjStep(
      title: MyStrings.dalel2,
      description: MyStrings.dDalel2,
      location: MyStrings.lDalel2,
      position: const Offset(280, 220),
    ),
    HajjStep(
      title: MyStrings.dalel3,
      description: MyStrings.dDalel3,
      location: MyStrings.lDalel3,
      position: const Offset(90, 340),
    ),
    HajjStep(
      title: MyStrings.dalel4,
      description: MyStrings.dDalel4,
      location: MyStrings.lDalel4,
      position: const Offset(290, 460),
    ),
    HajjStep(
      title: MyStrings.dalel5,
      description: MyStrings.dDalel5,
      location: MyStrings.lDalel5,
      position: const Offset(140, 580),
    ),
    HajjStep(
      title: MyStrings.dalel6,
      description: MyStrings.dDalel6,
      location: MyStrings.lDalel6,
      position: const Offset(280, 700),
    ),
    HajjStep(
      title: MyStrings.dalel7,
      description: MyStrings.dDalel7,
      location: MyStrings.lDalel7,
      position: const Offset(80, 820),
    ),
    HajjStep(
      title: MyStrings.dalel8,
      description: MyStrings.dDalel8,
      location: MyStrings.lDalel8,
      position: const Offset(260, 940),
    ),
    HajjStep(
      title: MyStrings.dalel9,
      description: MyStrings.dDalel9,
      location: MyStrings.lDalel9,
      position: const Offset(100, 1060),
    ),
    HajjStep(
      title: MyStrings.dalel10,
      description: MyStrings.dDalel10,
      location: MyStrings.lDalel10,
      position: const Offset(290, 1180),
    ),
    HajjStep(
      title: MyStrings.dalel11,
      description: MyStrings.dDalel11,
      location: MyStrings.lDalel11,
      position: const Offset(120, 1300),
    ),
    HajjStep(
      title: MyStrings.dalel12,
      description: MyStrings.dDalel12,
      location: MyStrings.lDalel12,
      position: const Offset(240, 1420),
    ),
  ];

  void _scrollToStep(int index) {
    double targetOffset = steps[index].position.dy - 150;
    if (targetOffset < 0) targetOffset = 0;
    if (targetOffset > _scrollController.position.maxScrollExtent) {
      targetOffset = _scrollController.position.maxScrollExtent;
    }

    _scrollController.animateTo(
      targetOffset,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );
  }

  void _updateCurrentStep(int index) {
    setState(() {
      currentStepIndex = index;
    });
    _scrollToStep(index);
  }

  void _navigateToNextStep() {
    if (currentStepIndex < steps.length - 1) {
      _updateCurrentStep(currentStepIndex + 1);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            '✨ حج مبرور وذنب مغفور إن شاء الله',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Color(0xFF0F4C43),
        ),
      );
      Navigator.pop(context);
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentStep = steps[currentStepIndex];

    return Stack(
      children: [
        Positioned.fill(
          bottom: 180,
          child: SingleChildScrollView(
            controller: _scrollController,
            physics: const BouncingScrollPhysics(),
            child: SizedBox(
              height: 1650,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: CustomPaint(
                      painter: HajjPainter(
                        steps: steps,
                        currentStepIndex: currentStepIndex,
                      ),
                    ),
                  ),

                  ...List.generate(steps.length, (index) {
                    final step = steps[index];
                    return HajjStepNode(
                      step: step,
                      index: index,
                      isCurrent: index == currentStepIndex,
                      isCompleted: index < currentStepIndex,
                      onNodeTap: () => _updateCurrentStep(index),
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 24,
          left: 20,
          right: 20,
          child: HajjInfoBottomSheet(
            currentStep: currentStep,
            onNextStepPressed: _navigateToNextStep,
          ),
        ),
      ],
    );
  }
}
