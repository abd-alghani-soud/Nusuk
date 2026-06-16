import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nusuk/core/constants/my_colors.dart';
import 'package:nusuk/core/constants/my_images.dart';
import 'package:nusuk/features/alhaj/presentation/widget/haj_content_widget.dart';
import 'package:nusuk/features/alhaj/presentation/widget/haj_header_widget.dart';
import '../../data/models/menu_item_model.dart';
import '../page/alarkan_page.dart';
import '../page/alfaraed_page.dart';
import '../page/alsunnan_page.dart';
import '../page/dalel_alhaj_page.dart';
import '../../../../core/widgets/custom_gridview.dart';

class HajPageBody extends StatelessWidget {
  HajPageBody({super.key});

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
      navigationPage: const DalelAlhajPage(),
    ),
    MenuItemModel(
      title: 'فرائض الحج',
      image: MyImages.fraed,
      navigationPage: const AlfaraedPage(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      body: Column(
        children: [
          const HajHeaderWidget(),

          Expanded(child: HajContentWidget(menuItem: menuItem)),
        ],
      ),
    );
  }
}
