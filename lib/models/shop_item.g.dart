// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopItem _$_$_ShopItemFromJson(Map<String, dynamic> json) {
  return _$_ShopItem(
    id: json['id'] as int,
    title: json['title'] as String,
    price: (json['price'] as num).toDouble(),
    category: json['category'] as String,
    description: json['description'] as String,
    image: json['image'] as String,
    rating: ShopItemRating.fromJson(json['rating'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ShopItemToJson(_$_ShopItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'category': instance.category,
      'description': instance.description,
      'image': instance.image,
      'rating': instance.rating,
    };
