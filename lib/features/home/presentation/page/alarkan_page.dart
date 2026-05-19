import 'package:flutter/material.dart';
import 'package:nusuk/core/constants/my_colors.dart';
import 'package:nusuk/features/home/data/models/alarkan_item_model.dart';
import 'package:nusuk/features/home/presentation/widget/alarkan_page_body.dart';
import 'package:nusuk/features/home/presentation/widget/arkan_card_widget.dart';

class AlarkanPage extends StatelessWidget {
  const AlarkanPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<AlarkanItemModel> arkanList = [
      AlarkanItemModel(
        number: '1',
        title: 'النية (الإحرام)',
        description: 'النية والدخول في النسك من الميقات المحدد.',
        icon: Icons.person_outline, // استبدلها بأيقونة الإحرام المناسبة
      ),
      AlarkanItemModel(
        number: '2',
        title: 'الوقوف بعرفة',
        description: 'الوجود في عرفة في التاسع من ذي الحجة وهو أهم أركان الحج.',
        icon: Icons.landscape_outlined,
      ),
      AlarkanItemModel(
        number: '3',
        title: 'طواف الإفاضة',
        description: 'الطواف بالبيت الحرام سبعاً بعد عرفة والمبيت بمزدلفة.',
        icon: Icons.sync_outlined,
      ),
      AlarkanItemModel(
        number: '4',
        title: 'السعي',
        description: 'السعي بين الصفا والمروة سبعة أشواط متتالية.',
        icon: Icons.directions_walk_outlined,
      ),
      AlarkanItemModel(
        number: '5',
        title: 'حلق الرأس أو تقصيره',
        description: 'قص الشعر بالكامل أو تقصيره كإعلان للتحلل.',
        icon: Icons.content_cut_outlined,
      ),
      AlarkanItemModel(
        number: '6',
        title: 'الترتيب',
        description: 'أداء الأركان السابقة بالترتيب الشرعي المحدد.',
        icon: Icons.format_list_numbered_rtl_outlined,
      ),
    ];
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
