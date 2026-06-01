import 'package:flutter/material.dart';

import '../../../data/models/card_item_model.dart';
import '../nusuk_list_card.dart';

class AlfaraedPageBody extends StatelessWidget {
  const AlfaraedPageBody({super.key, required this.alfaraedList});

  final List<CardItemModel> alfaraedList;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        itemCount: alfaraedList.length,
        itemBuilder: (context, index) {
          return NusukListCard(item: alfaraedList[index]);
        },
      ),
    );
  }
}
