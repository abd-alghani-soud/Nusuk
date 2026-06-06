import 'package:flutter/material.dart';
import '../../data/models/card_item_model.dart';
import 'card_content.dart';
import 'card_leading_number.dart';
import 'card_trailing_image.dart';

class NusukListCard extends StatelessWidget {
  final CardItemModel item;

  const NusukListCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CardLeadingNumber(number: item.number),
            CardContent(title: item.title, description: item.description),
            CardTrailingImage(imagePath: item.image),
          ],
        ),
      ),
    );
  }
}
