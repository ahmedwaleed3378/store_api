import 'dart:convert';



import 'api_requests.dart';

class AllCategoriesService {
  Future<List<String>> getCategories() async {
    List<dynamic> categoryData = await Api()
        .get(url:'https://fakestoreapi.com/products/categories');
    List<String> categories = [];
    for (int i = 0; i < categoryData.length; i++) {
      categories.add(categoryData[i]);
    }
    return categories;
  }
}
