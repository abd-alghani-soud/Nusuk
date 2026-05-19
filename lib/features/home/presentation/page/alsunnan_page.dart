import 'package:flutter/material.dart';
import 'package:nusuk/core/constants/my_colors.dart';
import 'package:nusuk/core/constants/my_images.dart';
import 'package:nusuk/features/home/data/models/alarkan_item_model.dart';
import 'package:nusuk/features/home/presentation/widget/alsunnan_page_body.dart';

class AlsunnanPage extends StatelessWidget {
  AlsunnanPage({super.key});

  final List<AlarkanItemModel> sunnanList = [
    AlarkanItemModel(
      number: '1',
      title: 'الاغتسال والتطيب',
      description: 'تنظيف الجسد والتطيب في البدن قبل عقد نية الإحرام.',
      image: MyImages.ruken1,
    ),
    AlarkanItemModel(
      image: MyImages.ruken2,
      number: '2',
      title: 'ثياب الإحرام البيضاء',
      description: 'لبس إزار ورداء أبيضين نظيفين للرجال قبل الدخول في النسك.',
    ),
    AlarkanItemModel(
      image: MyImages.ruken3,
      number: '3',
      title: 'التلبية والجهر بها',
      description: 'قول "لبيك اللهم لبيك..." والجهر بها للرجال والاستمرار حتى رمي جمرة العقبة.',
    ),
    AlarkanItemModel(
      image: MyImages.ruken4,
      number: '4',
      title: 'طواف القدوم',
      description: 'الطواف بالبيت الحرام سبعاً فور الوصول لمكة (للمفرد والقارن).',
    ),
    AlarkanItemModel(
      image: MyImages.ruken5,
      number: '5',
      title: 'الاضطباع والرَّمَل',
      description: 'كشف الكتف الأيمن، وإسراع المشي في الأشواط الثلاثة الأولى من طواف القدوم.',
    ),
    AlarkanItemModel(
      image: MyImages.ruken6,
      number: '6',
      title: 'المبيت بمنى يوم التروية',
      description: 'التوجه إلى منى في اليوم الثامن من ذي الحجة وصلاة الصلوات الخمس بها.',
    ),
    AlarkanItemModel(
      image: MyImages.ruken6,
      number: '7',
      title: 'الجمع والقصر بعرفة',
      description: 'جمع صلاتي الظهر والعصر جمع تقديم وقصراً في وقت الظهر.',
    ),
    AlarkanItemModel(
      image: MyImages.ruken6,
      number: '8',
      title: 'المبيت بمزدلفة',
      description: 'البقاء في مزدلفة ليلة العاشر من ذي الحجة وصلاة الفجر في أول وقتها.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'سنن الحج',
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
      body: AlsunnanPageBody(sunnanList: sunnanList),
    );
  }
}
