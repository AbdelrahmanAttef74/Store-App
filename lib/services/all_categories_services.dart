// ignore_for_file: missing_required_param

import 'package:store_app/constants.dart';
import 'package:store_app/helper/api.dart';

class AllCategoriesServices {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data = await Api().get(url: '$baseUrl/products/categories');

    return data;
  }
}
