import 'package:flutter/material.dart';
import 'package:nusuk/core/constants/my_colors.dart';
import 'package:nusuk/features/home/data/models/alarkan_item_model.dart';

class ArkanCardWidget extends StatelessWidget {
  final AlarkanItemModel ruken;

  const ArkanCardWidget({super.key, required this.ruken});

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
            Row(
              children: [
                Container(
                  width: 45,
                  alignment: Alignment.center,
                  child: Text(
                    ruken.number,
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
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 8.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ruken.title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: MyColors.primary,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      ruken.description,
                      maxLines: 3,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[700],
                        height: 1.2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Image.asset(ruken.image, width: 100, height: 100),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
