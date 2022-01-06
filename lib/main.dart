import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pixabay/core/constant/app_theme.dart';
import 'package:pixabay/core/utils/binding.dart';
import 'package:pixabay/core/utils/routes.dart';
import 'package:pixabay/ui/image_screen/image_list_screen.dart';

import 'core/utils/localization_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Pixabay',
      theme: AppTheme.defTheme,
      initialBinding: Binding(),
      debugShowCheckedModeBanner: false,
      initialRoute: ImageListScreen.routeName,
      getPages: routes,
      translations: LocalizationService(context),
      locale: LocalizationService.locale,
      fallbackLocale: LocalizationService.fallbackLocale,
    );
  }
}
