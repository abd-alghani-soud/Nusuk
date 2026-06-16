import 'package:flutter/material.dart';
import 'package:nusuk/core/constants/my_colors.dart';
import 'package:nusuk/core/widgets/custom_gridview.dart';
import 'package:nusuk/features/alhaj/data/models/menu_item_model.dart';
import 'package:nusuk/features/alhaj/presentation/widget/duaa_card_widget.dart';

class HajContentWidget extends StatelessWidget {
  final List<MenuItemModel> menuItem;

  const HajContentWidget({super.key, required this.menuItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: MyColors.background,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Column(
        children: [
          Expanded(flex: 3, child: CustomGridView(menuItem: menuItem)),
          const SizedBox(height: 15),
          const DuaaCardWidget(),

        ],
      ),
    );
  }
}
