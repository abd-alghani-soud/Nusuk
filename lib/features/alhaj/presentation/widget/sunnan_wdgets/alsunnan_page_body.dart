import 'package:flutter/material.dart';
import '../../../data/models/card_item_model.dart';
import '../nusuk_list_card.dart';

class AlsunnanPageBody extends StatelessWidget {
  const AlsunnanPageBody({super.key, required this.sunnanList});

  final List<CardItemModel> sunnanList;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        itemCount: sunnanList.length,
        itemBuilder: (context, index) {
          return NusukListCard(item: sunnanList[index]);
        },
      ),
    );
  }
}
