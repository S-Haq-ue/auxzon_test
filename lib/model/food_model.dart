import 'dart:convert';

class FoodModel {
  final String img;
  final String name;
  final String shop;
  final String price;
  final String rating;
  final String description;
  final String kcal;
  final String eTime;
  FoodModel({
    required this.description,
    required this.kcal,
    required this.eTime,
    required this.img,
    required this.name,
    required this.shop,
    required this.price,
    required this.rating,
  });

  FoodModel copyWith({
    String? img,
    String? name,
    String? shop,
    String? price,
    String? rating,
    String? description,
    String? kcal,
    String? eTime,
  }) {
    return FoodModel(
      img: img ?? this.img,
      name: name ?? this.name,
      shop: shop ?? this.shop,
      price: price ?? this.price,
      rating: rating ?? this.rating,
      description: description ?? this.description,
      kcal: kcal ?? this.kcal,
      eTime: eTime ?? this.eTime,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'img': img,
      'name': name,
      'shop': shop,
      'price': price,
      'rating': rating,
    };
  }

  factory FoodModel.fromMap(Map<String, dynamic> map) {
    return FoodModel(
        img: map['img'] as String,
        name: map['name'] as String,
        shop: map['shop'] as String,
        price: map['price'] as String,
        rating: map['rating'] as String,
        description: map['description'] as String,
        kcal: map['kcal'] as String,
        eTime: map['eTime'] as String);
  }

  String toJson() => json.encode(toMap());

  factory FoodModel.fromJson(String source) => FoodModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'FoodModel(img: $img, name: $name, shop: $shop, price: $price, rating: $rating)';
  }

  @override
  bool operator ==(covariant FoodModel other) {
    if (identical(this, other)) return true;

    return other.img == img &&
        other.name == name &&
        other.shop == shop &&
        other.price == price &&
        other.rating == rating;
  }

  @override
  int get hashCode {
    return img.hashCode ^ name.hashCode ^ shop.hashCode ^ price.hashCode ^ rating.hashCode;
  }
}
