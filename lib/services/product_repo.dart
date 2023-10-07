import 'package:dio/dio.dart';
import 'package:e_commerce_app/constant/api.dart';
import 'package:e_commerce_app/models/product.dart';

final Dio dio = Dio();
Future<Product> fetchSingleProduct({required String id}) async {
  try {
    final response = await dio.get("${Api.baseUrl}/$id");

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = response.data;
      Product product = Product.fromJson(data);
      return product;
    } else {
      throw Exception('Failed to load product');
    }
  } catch (e) {
    throw Exception('Error: $e');
  }
}
