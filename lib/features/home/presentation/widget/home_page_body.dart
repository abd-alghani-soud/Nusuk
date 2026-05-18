import 'package:flutter/material.dart';
import 'package:nusuk/core/constants/my_colors.dart';
import 'package:nusuk/features/home/presentation/page/guid_page.dart';
import 'package:nusuk/features/home/presentation/page/pillars_page.dart';
import 'package:nusuk/features/home/presentation/page/rituals_page.dart';
import 'package:nusuk/features/home/presentation/page/sunnahs_page.dart';
import 'custom_gridview.dart';

class HomePageBody extends StatelessWidget {
  HomePageBody({super.key});

  final List<Item> menuItem = [
    Item(
      title: 'سنن الحج',
      imageUrl: 'assets/images/sunn.jpg',
      navigationPage: SunnahsPage(),
    ),
    Item(
      title: 'أركان الحج',
      imageUrl: 'assets/images/arkan.jpg',
      navigationPage: PillarsPage(),
    ),
    Item(
      title: 'دليل الحج',
      imageUrl: 'assets/images/dalil.jpg',
      navigationPage: GuidPage(),
    ),
    Item(
      title: 'فرائض الحج',
      imageUrl: 'assets/images/fraed.jpg',
      navigationPage: RitualsPage(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primary,
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * .3),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
              ),
              child: Container(
                color: MyColors.background,
                width: double.infinity,
                child: CustomGridView(menuItem: menuItem),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Item {
  final String title;
  final String imageUrl;
  final Widget navigationPage;

  Item({
    required this.title,
    required this.imageUrl,
    required this.navigationPage,
  });
}
