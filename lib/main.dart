import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nusuk/core/utils/theme/light/light_theme.dart';
import 'features/main/presentation/page/get_started_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 930),
      enableScaleText: () => false,
      fontSizeResolver: (fontSize, instance) {
        return fontSize.toDouble();
      },
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Nusuk',
          theme: MaterialTheme("Amiri").light(),
          darkTheme: MaterialTheme("Amiri").dark(),
          themeMode: ThemeMode.light,
          debugShowCheckedModeBanner: false,
          home: const GetStartedPage(),
        );
      },
    );
  }
}
