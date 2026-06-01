import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nusuk/core/constants/my_colors.dart';
import 'package:nusuk/core/constants/my_images.dart';
import 'package:nusuk/features/home/data/models/menu_item_model.dart';
import 'package:nusuk/features/home/presentation/page/dalel_alhaj_page.dart';
import 'package:nusuk/features/home/presentation/page/alarkan_page.dart';
import 'package:nusuk/features/home/presentation/page/alfaraed_page.dart';
import 'package:nusuk/features/home/presentation/page/alsunnan_page.dart';
import 'custom_gridview.dart';

class HomePageBody extends StatelessWidget {
  HomePageBody({super.key});

  final List<MenuItemModel> menuItem = [
    MenuItemModel(
      title: 'سنن الحج',
      image: MyImages.sunn,
      navigationPage: AlsunnanPage(),
    ),
    MenuItemModel(
      title: 'أركان الحج',
      image: MyImages.arkan,
      navigationPage: AlarkanPage(),
    ),
    MenuItemModel(
      title: 'دليل الحج',
      image: MyImages.dalil,
      navigationPage: DalelAlhajPage(),
    ),
    MenuItemModel(
      title: 'فرائض الحج',
      image: MyImages.fraed,
      navigationPage: AlfaraedPage(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primary,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(MyImages.kaabaLogo, height: 100, width: 80),
                Text(
                  'دليل الحج الإلكتروني',
                  style: TextStyle(fontSize: 28, color: MyColors.background),
                ),
                Text(
                  'Hajj-Guide',
                  style: TextStyle(fontSize: 28, color: MyColors.background),
                ),
              ],
            ),
          ),
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
