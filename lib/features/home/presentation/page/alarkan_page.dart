import 'package:flutter/material.dart';
import 'package:nusuk/core/constants/my_colors.dart';
import 'package:nusuk/core/constants/my_images.dart';
import 'package:nusuk/features/home/data/models/alarkan_item_model.dart';
import 'package:nusuk/features/home/presentation/widget/alarkan_page_body.dart';

class AlarkanPage extends StatelessWidget {
  AlarkanPage({super.key});

  final List<AlarkanItemModel> arkanList = [
    AlarkanItemModel(
      number: '1',
      title: 'النية (الإحرام)',
      description: 'النية والدخول في النسك من الميقات المحدد.',
      image: MyImages.ruken1,
    ),
    AlarkanItemModel(
      image: MyImages.ruken2,
      number: '2',
      title: 'الوقوف بعرفة',
      description: 'الوجود في عرفة في التاسع من ذي الحجة وهو أهم أركان الحج.',
    ),
    AlarkanItemModel(
      image: MyImages.ruken3,
      number: '3',
      title: 'طواف الإفاضة',
      description: 'الطواف بالبيت الحرام سبعاً بعد عرفة والمبيت بمزدلفة.',
    ),
    AlarkanItemModel(
      image: MyImages.ruken4,
      number: '4',
      title: 'السعي',
      description: 'السعي بين الصفا والمروة سبعة أشواط متتالية.',
    ),
    AlarkanItemModel(
      image: MyImages.ruken5,
      number: '5',
      title: 'حلق الرأس أو تقصيره',
      description: 'قص الشعر بالكامل أو تقصيره كإعلان للتحلل.',
    ),
    AlarkanItemModel(
      image: MyImages.ruken6,
      number: '6',
      title: 'الترتيب',
      description: 'أداء الأركان السابقة بالترتيب الشرعي المحدد.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6F0),
      appBar: AppBar(
        title: Text(
          'أركان الحج',
          style: TextStyle(color: MyColors.accent, fontWeight: FontWeight.bold),
        ),
        backgroundColor: MyColors.primary,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: MyColors.accent),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: AlarkanPageBody(arkanList: arkanList),
    );
  }
}
