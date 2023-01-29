import 'package:store_api/services/api_requests.dart';

import '../models/product_model.dart';

class AllProductService {
  Future<List<ProductModel>> getAllProducts(
      {required String categoryName}) async {
    List<dynamic> productListDecoded = await Api()
        .get(url:'https://fakestoreapi.com/products/category/$categoryName');
    List<ProductModel> products = [];
    for (int i = 0; i < productListDecoded.length; i++) {
      products.add(ProductModel.fromjson(productListDecoded[i]));
    }
    return products;
  }
}
