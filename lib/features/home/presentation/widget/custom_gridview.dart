import 'package:flutter/material.dart';
import 'package:nusuk/features/home/data/models/menu_item_model.dart';

import 'custom_gridview_item.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key, required this.menuItem});

  final List<MenuItemModel> menuItem;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 4,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        childAspectRatio: 0.9,
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomGridViewItem(
            imageUrl: menuItem[index].image,
            title: menuItem[index].title,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return menuItem[index].navigationPage;
                  },
                ),
              );
            },
          ),
        );
      },
    );
  }
}
