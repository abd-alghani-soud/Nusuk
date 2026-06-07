import 'package:flutter/material.dart';
import 'package:nusuk/core/constants/my_colors.dart';
import 'package:nusuk/core/constants/my_images.dart';
import 'package:nusuk/core/constants/my_strings.dart';

import '../../data/models/card_item_model.dart';
import '../widget/faraed_widgets/alfaraed_page_body.dart';

class AlfaraedPage extends StatelessWidget {
  const AlfaraedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CardItemModel> alfaraedList = [
      CardItemModel(
        image: MyImages.fared1,
        number: '1',
        title: MyStrings.fared1,
        description: MyStrings.dFared1,
      ),
      CardItemModel(
        image: MyImages.fared2,
        number: '2',
        title: MyStrings.fared2,
        description: MyStrings.dFared2,
      ),
      CardItemModel(
        image: MyImages.fared3,
        number: '3',
        title: MyStrings.fared3,
        description: MyStrings.dFared3,
      ),
      CardItemModel(
        image: MyImages.fared4,
        number: '4',
        title: MyStrings.fared4,
        description: MyStrings.dFared4,
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'الفرائض',
          style: TextStyle(color: MyColors.accent, fontWeight: FontWeight.bold),
        ),
        backgroundColor: MyColors.primary,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: MyColors.accent),
        ),
      ),
      body: AlfaraedPageBody(alfaraedList: alfaraedList),
    );
  }
}
