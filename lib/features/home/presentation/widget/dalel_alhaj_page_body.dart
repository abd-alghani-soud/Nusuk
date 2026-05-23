import 'package:flutter/material.dart';
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
      title: 'الإحرام والنية',
      description:
          'الاغتسال، لبس ملابس الإحرام، وعقد النية بالدخول في النسك من الميقات أو بمكة.',
      location: 'الميقات / مكة',
      position: const Offset(80, 100),
    ),
    HajjStep(
      title: 'طواف القدوم',
      description:
          'الطواف حول الكعبة المشرفة 7 أشواط فور الوصول إلى مكة المكرمة وتحية البيت العتيق.',
      location: 'المسجد الحرام',
      position: const Offset(280, 220),
    ),
    HajjStep(
      title: 'السعي',
      description:
          'السعي بين الصفا والمروة 7 أشواط كاملة تبدأ من الصفا وتنتهي بالمروة.',
      location: 'المسعى',
      position: const Offset(90, 340),
    ),
    HajjStep(
      title: 'يوم التروية (8 ذو الحجة)',
      description:
          'الذهاب إلى منى في صباح هذا اليوم والمبيت بها وصلاة الظهر والعصر والمغرب والعشاء والفجر قصراً بلا جمع.',
      location: 'مشعر منى',
      position: const Offset(290, 460),
    ),
    HajjStep(
      title: 'الوقوف بعرفة (9 ذو الحجة)',
      description:
          'الانتقال إلى عرفة بعد شروق الشمس، والوقوف بها والدعاء والتضرع إلى غروب الشمس (ركن الحج الأعظم).',
      location: 'مشعر عرفات',
      position: const Offset(140, 580),
    ),
    HajjStep(
      title: 'المزدلفة',
      description:
          'النفرة إلى مزدلفة بعد غروب شمس يوم عرفة، صلاة المغرب والعشاء جمعاً وقصراً، والمبيت بها وجمع الحصى.',
      location: 'مشعر مزدلفة',
      position: const Offset(280, 700),
    ),
    HajjStep(
      title: 'رمي جمرة العقبة الكبرى',
      description:
          'العودة إلى منى صباح يوم العيد (10 ذو الحجة) ورمي جمرة العقبة الكبرى بـ 7 حصيات متعاقبات مع التكبير.',
      location: 'جسر الجمرات - منى',
      position: const Offset(80, 820),
    ),
    HajjStep(
      title: 'النحر والهدي',
      description:
          'ذبح الهدي (الأنعام) شكرًا لله تعالى، ويجوز للحاج توكيل المؤسسات الرسمية بذلك.',
      location: 'مسالخ منى',
      position: const Offset(260, 940),
    ),
    HajjStep(
      title: 'الحلق أو التقصير',
      description:
          'حلق شعر الرأس بالكامل أو تقصيره للرجال (والحلق أفضل)، وتقصير أطراف الشعر قدر أنملة للنساء، وبهذا يتحلل التحلل الأول.',
      location: 'منى / مكة',
      position: const Offset(100, 1060),
    ),
    HajjStep(
      title: 'طواف الإفاضة',
      description:
          'النزول إلى مكة لعمل طواف الإفاضة (ركن) والسعي إن لم يكن قد سعى، وبهذا يتحلل الحاج التحلل الأكبر كاملاً.',
      location: 'المسجد الحرام',
      position: const Offset(290, 1180),
    ),
    HajjStep(
      title: 'أيام التشريق ورمي الجمرات',
      description:
          'المبيت في منى أيام التشريق، ورمي الجمرات الثلاث (الصغرى، الوسطى، الكبرى) كل يوم بعد الزوال بـ 7 حصيات لكل جمرة.',
      location: 'جسر الجمرات',
      position: const Offset(120, 1300),
    ),
    HajjStep(
      title: 'طواف الوداع',
      description:
          'آخر ما يفعله الحاج قبل مغادرة مكة المكرمة مباشرة، يطوف 7 أشواط حول الكعبة ليكون آخر عهده بالبيت.',
      location: 'المسجد الحرام',
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
