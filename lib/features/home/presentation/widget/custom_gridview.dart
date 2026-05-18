import 'package:flutter/material.dart';

import 'custom_gridview_item.dart';
import 'home_page_body.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key, required this.menuItem});

  final List<Item> menuItem;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 4,
      padding: EdgeInsets.only(top: 12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomGridViewItem(
            imageUrl: menuItem[index].imageUrl,
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
