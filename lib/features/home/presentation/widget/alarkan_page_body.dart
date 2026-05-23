import 'package:flutter/material.dart';
import 'package:nusuk/features/home/data/models/alarkan_item_model.dart';
import 'package:nusuk/features/home/presentation/widget/arkan_card_widget.dart';

class AlarkanPageBody extends StatelessWidget {
  const AlarkanPageBody({super.key, required this.arkanList});

  final List<AlarkanItemModel> arkanList;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        itemCount: arkanList.length,
        itemBuilder: (context, index) {
          return ArkanCardWidget(ruken: arkanList[index]);
        },
      ),
    );
  }
}
