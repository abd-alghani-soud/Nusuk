import 'package:flutter/material.dart';
import 'package:nusuk/features/home/data/models/alarkan_item_model.dart';
import 'package:nusuk/features/home/presentation/widget/arkan_card_widget.dart';

class AlsunnanPageBody extends StatelessWidget {
  const AlsunnanPageBody({super.key, required this.sunnanList});
  final List<AlarkanItemModel> sunnanList;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        itemCount: sunnanList.length,
        itemBuilder: (context, index) {
          return ArkanCardWidget(ruken: sunnanList[index]);
        },
      ),
    );
  }
}
