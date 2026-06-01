import 'package:flutter/material.dart';
import 'package:nusuk/core/constants/my_colors.dart';
import 'package:nusuk/core/constants/my_images.dart';
import 'package:nusuk/core/constants/my_strings.dart';
import 'package:nusuk/features/home/data/models/card_item_model.dart';
import 'package:nusuk/features/home/presentation/widget/sunnan_wdgets/alsunnan_page_body.dart';

class AlsunnanPage extends StatelessWidget {
  AlsunnanPage({super.key});

  final List<CardItemModel> sunnanList = [
    CardItemModel(
      number: '1',
      title: MyStrings.sunnan1,
      description: MyStrings.dSunnan1,
      image: MyImages.sunnan1,
    ),
    CardItemModel(
      image: MyImages.sunnan2,
      number: '2',
      title: MyStrings.sunnan2,
      description: MyStrings.dSunnan2,
    ),
    CardItemModel(
      image: MyImages.sunnan3,
      number: '3',
      title: MyStrings.sunnan3,
      description: MyStrings.dSunnan3,
    ),
    CardItemModel(
      image: MyImages.sunnan4,
      number: '4',
      title: MyStrings.sunnan4,
      description: MyStrings.dSunnan4,
    ),
    CardItemModel(
      image: MyImages.sunnan5,
      number: '5',
      title: MyStrings.sunnan5,
      description: MyStrings.dSunnan5,
    ),
    CardItemModel(
      image: MyImages.sunnan6,
      number: '6',
      title: MyStrings.sunnan6,
      description: MyStrings.dSunnan6,
    ),
    CardItemModel(
      image: MyImages.sunnan7,
      number: '7',
      title: MyStrings.sunnan7,
      description: MyStrings.dSunnan7,
    ),
    CardItemModel(
      image: MyImages.sunnan8,
      number: '8',
      title: MyStrings.sunnan8,
      description: MyStrings.dSunnan8,
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
