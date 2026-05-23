import 'package:flutter/material.dart';
import 'package:nusuk/features/home/presentation/widget/alfaraed_page_body.dart';

import '../../../../core/constants/my_colors.dart';
import '../../../../core/constants/my_images.dart';
import '../../../../core/constants/my_strings.dart';
import '../../data/models/alarkan_item_model.dart';

class AlfaraedPage extends StatelessWidget {
  const AlfaraedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<AlarkanItemModel> alfaraedList = [
      AlarkanItemModel(
        image: MyImages.fared1,
        number: '1',
        title: MyStrings.fared1,
        description: MyStrings.dFared1,
      ),
      AlarkanItemModel(
        image: MyImages.fared2,
        number: '2',
        title: MyStrings.fared2,
        description: MyStrings.dFared2,
      ),
      AlarkanItemModel(
        image: MyImages.fared3,
        number: '3',
        title: MyStrings.fared3,
        description: MyStrings.dFared3,
      ),
      AlarkanItemModel(
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
