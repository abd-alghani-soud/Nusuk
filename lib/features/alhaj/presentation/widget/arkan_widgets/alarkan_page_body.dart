import 'package:flutter/material.dart';
import '../../../data/models/card_item_model.dart';
import '../nusuk_list_card.dart';

class AlarkanPageBody extends StatelessWidget {
  const AlarkanPageBody({super.key, required this.arkanList});

  final List<CardItemModel> arkanList;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        itemCount: arkanList.length,
        itemBuilder: (context, index) {
          return NusukListCard(item: arkanList[index]);
        },
      ),
    );
  }
}
