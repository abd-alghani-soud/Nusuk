import 'package:flutter/material.dart';

import '../../data/models/alarkan_item_model.dart';
import 'arkan_card_widget.dart';

class AlfaraedPageBody extends StatelessWidget {
  const AlfaraedPageBody({super.key, required this.alfaraedList});

  final List<AlarkanItemModel> alfaraedList;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        itemCount: alfaraedList.length,
        itemBuilder: (context, index) {
          return ArkanCardWidget(ruken: alfaraedList[index]);
        },
      ),
    );
  }
}
