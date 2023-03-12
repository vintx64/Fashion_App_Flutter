import 'dart:convert';

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
  factory ProductModel.fromJson(jasonData) {
    return ProductModel(
        id: jasonData['id'],
        title: jasonData['title'],
        category: jasonData['category'],
        price: jasonData['price'],
        description: jasonData['description'],
        image: jasonData['image'],
        rating: jasonData['rating'] == null
            ? null
            : RatingModel.fromJson(jasonData['rating']));
  }
}

class RatingModel {
  final dynamic rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(rate: jsonData['rate'], count: jsonData['count']);
  }
}
