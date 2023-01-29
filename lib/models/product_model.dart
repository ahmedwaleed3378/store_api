class ProductModel {
  final dynamic id;
  final String title;
  final dynamic price;
  final String description;
  final String image;
  final RatingModel? rating;
  final String category;
  ProductModel(
      {required this.id,
      required this.title,
      required this.category,
      required this.price,
      required this.description,
      required this.image,
      required this.rating});

  factory ProductModel.fromjson(jsonData) {
    return ProductModel(
        id:jsonData['id'],
        title: jsonData['title'],
        category: jsonData['category'],
        price: jsonData['price'],
        description: jsonData['description'],
        image: jsonData['image'],
        rating: jsonData['rating'] == null
            ? null
            : RatingModel.fromjson(jsonData['rating']));
  }
}

class RatingModel {
  final dynamic rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromjson(jsonData) {
    return RatingModel(rate: jsonData['rate'], count: jsonData['count']);
  }
}


// class ProductModel {
//   final String id;
//   final String title;
//   final double price;
//   final String description;
//   final String category;
//   final String image;
//   final RatingModel ratingModel;

//   ProductModel({
//     required this.id,
//     required this.title,
//     required this.price,
//     required this.description,
//     required this.category,
//     required this.image,
//     required this.ratingModel,
//   });

//   factory ProductModel.fromjson(apiData) {
//     return ProductModel(
//       id: apiData['id'],
//       title: apiData['title'],
//       price: apiData['price'],
//       description: apiData['description'],
//       category: apiData['category'],
//       image: apiData['image'],
//       ratingModel: RatingModel.fromjson(apiData['rating'])
//     );
//   }
// }

// class RatingModel {
//   final double rate;
//   final int count;

//   RatingModel({required this.rate, required this.count});
//   factory RatingModel.fromjson(ratingObject) {
//     return RatingModel(
//         rate: ratingObject['rate'], count: ratingObject['count']);
//   }
// }
