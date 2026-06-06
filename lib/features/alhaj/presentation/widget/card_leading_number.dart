import 'package:flutter/material.dart';
import 'package:nusuk/core/constants/my_colors.dart';

class CardLeadingNumber extends StatelessWidget {
  final String number;

  const CardLeadingNumber({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 45,
          alignment: Alignment.center,
          child: Text(
            number,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: MyColors.accent.withOpacity(0.8),
            ),
          ),
        ),
        VerticalDivider(
          color: Colors.grey[200],
          thickness: 1,
          width: 1,
          indent: 12,
          endIndent: 12,
        ),
      ],
    );
  }
}
