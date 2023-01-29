import 'dart:convert';

import 'package:http/http.dart';


import '../models/product_model.dart';
import 'api_requests.dart';

class AllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');

    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(
        ProductModel.fromjson(data[i]),
      );
    }
    return productsList;
  }
}

// import '../models/product_model.dart';

// import 'api_requests.dart';

// class AllProductService {
//   Future<List<ProductModel>> getAllProducts() async {
//     List<dynamic> productListDecoded =
//         await APIRequests().getReq(url:'https://fakestoreapi.com/products');
//     List<ProductModel> products = [];
//     for (int i = 0; i < productListDecoded.length; i++) {
//       products.add(ProductModel.fromjson(productListDecoded[i]));
//     }
//     return products;
//   }
// }
