// ignore_for_file: missing_required_param

import 'package:store_app/constants.dart';
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class CategoryServices {
  Future<List<ProductModel>> getCategoriesServices(
      {required String categoryName}) async {
    List<dynamic> data =
        await Api().get(url: '$baseUrl/products/category/$categoryName');

    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(ProductModel.fromJson(data[i]));
    }
    return productList;
  }
}
//'$baseUrl/products/category/$categoryName'