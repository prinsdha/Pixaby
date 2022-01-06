import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pixabay/core/utils/global.dart';
import 'package:pixabay/ui/image_screen/model/image_list_model.dart';

class ImageRepo {
  static Future<ImagesListModel?> fetchImageList(
      {required int page, required String search}) async {
    try {
      bool connection = await checkConnection();

      if (connection) {
        String url =
            "https://pixabay.com/api/?key=25050907-a71039efb1f58bc579af5b67f&q=$search&image_type=photo&page=$page";
        var response = await http.get(
          Uri.parse(url),
        );
        return ImagesListModel.fromJson(jsonDecode(response.body));
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
