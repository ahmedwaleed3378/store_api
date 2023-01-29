import 'package:store_api/services/api_requests.dart';

import '../models/product_model.dart';

class AddProductService {
  Future<dynamic> addProduct(
      {required String title,
      required String price,
      required String description,
      required String image,
      required String category,
      String? token}) async {
    Map<String, dynamic> postedData = await Api()
        .post(url: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category,
    });
    return ProductModel.fromjson(postedData ) ;
  }
}
