// import '../models/product_model.dart';
// import 'api_requests.dart';

// class UpdateProductService{
//   Future <dynamic> updateReq(
//       {required String title,
//       required String price,
//       required String description,
//       required String image,
//       required String category,
//       String? token}) async {
//        Map<String, dynamic> updatedData = await Api()
//         .post(url: 'https://fakestoreapi.com/products', body: {
//       'title': title,
//       'price': price,
//       'description': description,
//       'image': image,
//       'category': category,
//     });
//     return ProductModel.fromjson(updatedData);
//       }
// }



import '../models/product_model.dart';
import 'api_requests.dart';

class UpdateProductService {
  Future<ProductModel> updateProduct(
      {required String title,
      required String price,
      required String desc,
      required String image,
      required int id,
      required String category}) async {
    print('product id  = $id');
    Map<String, dynamic> data =
        await Api().put(url: 'https://fakestoreapi.com/products/$id', body: {
      'title': title,
      'price': price,
      'description': desc,
      'image': image,
      'category': category,
    });

    return ProductModel.fromjson(data);
  }
}