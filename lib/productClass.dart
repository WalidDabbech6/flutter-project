import 'dart:ffi';

class ProductClass {
  String id;
  String title;
  String description;
  double price;
  Bool availability;
  Bool novelty;
  Array category;
  Array tags;
  Array gallery;
  String sellerId;

  ProductClass(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.availability,
      required this.novelty,
      required this.category,
      required this.tags,
      required this.gallery,
      required this.sellerId});

  factory ProductClass.fromJson(dynamic json) {
    return ProductClass(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: json["price"] as double,
      availability: json['availability'] as Bool,
      novelty: json['novelty'] as Bool,
      category: json['category'] as Array,
      tags: json['tags'] as Array,
      gallery: json['gallery'] as Array,
      sellerId: json['sellerId'],
    );
  }
}
