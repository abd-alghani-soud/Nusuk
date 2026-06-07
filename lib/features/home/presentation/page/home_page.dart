import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nusuk/core/constants/my_images.dart';
import 'package:nusuk/core/constants/my_strings.dart';
import 'package:nusuk/features/alhaj/presentation/page/haj_page.dart';
import '../../../../core/constants/my_colors.dart';
import '../../../azkar/presentation/page/azkar_page.dart';
import '../../../bosla/presentation/page/bosla_page.dart';
import '../widget/home_page_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _page = [
    HomePageBody(),
    HajPage(),
    BoslaPage(),
    AzkarPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primary,
      body: IndexedStack(index: _currentIndex, children: _page),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Color(0xFFF9F6EE),
        selectedIndex: _currentIndex,
        elevation: 1,
        shadowColor: Colors.black.withOpacity(0.9),
        height: 100,
        onDestinationSelected: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        destinations: [
          NavigationDestination(
            icon: SvgPicture.asset(MyImages.home, height: 60, width: 75),
            label: MyStrings.home,
          ),
          NavigationDestination(
            icon: SvgPicture.asset(MyImages.alHaj, height: 60, width: 75),
            label: MyStrings.alHaj,
          ),
          NavigationDestination(
            icon: SvgPicture.asset(MyImages.alBosla, height: 60, width: 75),
            label: MyStrings.alBosla,
          ),
          NavigationDestination(
            icon: SvgPicture.asset(MyImages.alAzkar, height: 60, width: 75),
            label: MyStrings.alAzkar,
          ),
        ],
      ),
    );
  }
}
