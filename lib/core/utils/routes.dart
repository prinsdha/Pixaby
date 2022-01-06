import 'package:get/get.dart';
import 'package:pixabay/ui/image_screen/full_image_screen.dart';
import 'package:pixabay/ui/image_screen/image_list_screen.dart';

final List<GetPage<dynamic>> routes = [
  GetPage(name: ImageListScreen.routeName, page: () => const ImageListScreen()),
  GetPage(name: FullImageScreen.routeName, page: () => const FullImageScreen()),
];
