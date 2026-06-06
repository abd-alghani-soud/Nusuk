import 'package:flutter/material.dart';
import 'package:nusuk/core/constants/my_colors.dart';
import 'package:nusuk/core/constants/my_images.dart';
import 'package:nusuk/core/constants/my_strings.dart';
import '../../data/models/card_item_model.dart';
import '../widget/arkan_widgets/alarkan_page_body.dart';

class AlarkanPage extends StatelessWidget {
  AlarkanPage({super.key});

  final List<CardItemModel> arkanList = [
    CardItemModel(
      number: '1',
      title: MyStrings.ruken1,
      description: MyStrings.dRuken1,
      image: MyImages.ruken1,
    ),
    CardItemModel(
      image: MyImages.ruken2,
      number: '2',
      title: MyStrings.ruken2,
      description: MyStrings.dRuken2,
    ),
    CardItemModel(
      image: MyImages.ruken3,
      number: '3',
      title: MyStrings.ruken3,
      description: MyStrings.dRuken3,
    ),
    CardItemModel(
      image: MyImages.ruken4,
      number: '4',
      title: MyStrings.ruken4,
      description: MyStrings.dRuken4,
    ),
    CardItemModel(
      image: MyImages.ruken5,
      number: '5',
      title: MyStrings.ruken5,
      description: MyStrings.dRuken5,
    ),
    CardItemModel(
      image: MyImages.ruken6,
      number: '6',
      title: MyStrings.ruken6,
      description: MyStrings.dRuken6,
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
