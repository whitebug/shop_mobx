// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_item_mx.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShopItemMx _$ShopItemMxFromJson(Map<String, dynamic> json) {
  return ShopItemMx(
    id: json['id'] as int,
    title: json['title'] as String,
    price: (json['price'] as num).toDouble(),
    category: json['category'] as String,
    description: json['description'] as String,
    image: json['image'] as String,
    rating: ShopItemRatingMx.fromJson(json['rating'] as Map<String, dynamic>),
  )..favorite = json['favorite'] as bool;
}

Map<String, dynamic> _$ShopItemMxToJson(ShopItemMx instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'category': instance.category,
      'description': instance.description,
      'image': instance.image,
      'favorite': instance.favorite,
      'rating': instance.rating,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ShopItemMx on _ShopItemMx, Store {
  final _$favoriteAtom = Atom(name: '_ShopItemMx.favorite');

  @override
  bool get favorite {
    _$favoriteAtom.reportRead();
    return super.favorite;
  }

  @override
  set favorite(bool value) {
    _$favoriteAtom.reportWrite(value, super.favorite, () {
      super.favorite = value;
    });
  }

  final _$_ShopItemMxActionController = ActionController(name: '_ShopItemMx');

  @override
  void changeFav() {
    final _$actionInfo = _$_ShopItemMxActionController.startAction(
        name: '_ShopItemMx.changeFav');
    try {
      return super.changeFav();
    } finally {
      _$_ShopItemMxActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
favorite: ${favorite}
    ''';
  }
}
