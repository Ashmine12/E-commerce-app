import 'package:dio/dio.dart';
import 'package:e_commerce_app/constant/api.dart';
import 'package:e_commerce_app/models/products.dart';

final Dio dio = Dio();
Future<List<Products>> fetchProducts() async {
  try {
    final response = await dio.get(Api.baseUrl);

    if (response.statusCode == 200) {
      final List<dynamic> data = response.data;
      List<Products> productsList =
          data.map((json) => Products.fromJson(json)).toList();
      return productsList;
    } else {
      throw Exception('Failed to load products');
    }
  } catch (e) {
    throw Exception('Error: $e');
  }
}

Future<List<Products>> fetchProductsCategories(
    {required String category}) async {
  try {
    final response = await dio.get("${Api.baseUrl}/category/$category");

    if (response.statusCode == 200) {
      final List<dynamic> data = response.data;
      List<Products> productsList =
          data.map((json) => Products.fromJson(json)).toList();
      return productsList;
    } else {
      throw Exception('Failed to load products');
    }
  } catch (e) {
    throw Exception('Error: $e');
  }
}
