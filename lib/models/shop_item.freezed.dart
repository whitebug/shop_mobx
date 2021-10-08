// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'shop_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopItem _$ShopItemFromJson(Map<String, dynamic> json) {
  return _ShopItem.fromJson(json);
}

/// @nodoc
class _$ShopItemTearOff {
  const _$ShopItemTearOff();

  _ShopItem call(
      {required int id,
      required String title,
      required double price,
      required String category,
      required String description,
      required String image,
      required ShopItemRating rating}) {
    return _ShopItem(
      id: id,
      title: title,
      price: price,
      category: category,
      description: description,
      image: image,
      rating: rating,
    );
  }

  ShopItem fromJson(Map<String, Object> json) {
    return ShopItem.fromJson(json);
  }
}

/// @nodoc
const $ShopItem = _$ShopItemTearOff();

/// @nodoc
mixin _$ShopItem {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  ShopItemRating get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopItemCopyWith<ShopItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopItemCopyWith<$Res> {
  factory $ShopItemCopyWith(ShopItem value, $Res Function(ShopItem) then) =
      _$ShopItemCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      double price,
      String category,
      String description,
      String image,
      ShopItemRating rating});

  $ShopItemRatingCopyWith<$Res> get rating;
}

/// @nodoc
class _$ShopItemCopyWithImpl<$Res> implements $ShopItemCopyWith<$Res> {
  _$ShopItemCopyWithImpl(this._value, this._then);

  final ShopItem _value;
  // ignore: unused_field
  final $Res Function(ShopItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? category = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as ShopItemRating,
    ));
  }

  @override
  $ShopItemRatingCopyWith<$Res> get rating {
    return $ShopItemRatingCopyWith<$Res>(_value.rating, (value) {
      return _then(_value.copyWith(rating: value));
    });
  }
}

/// @nodoc
abstract class _$ShopItemCopyWith<$Res> implements $ShopItemCopyWith<$Res> {
  factory _$ShopItemCopyWith(_ShopItem value, $Res Function(_ShopItem) then) =
      __$ShopItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      double price,
      String category,
      String description,
      String image,
      ShopItemRating rating});

  @override
  $ShopItemRatingCopyWith<$Res> get rating;
}

/// @nodoc
class __$ShopItemCopyWithImpl<$Res> extends _$ShopItemCopyWithImpl<$Res>
    implements _$ShopItemCopyWith<$Res> {
  __$ShopItemCopyWithImpl(_ShopItem _value, $Res Function(_ShopItem) _then)
      : super(_value, (v) => _then(v as _ShopItem));

  @override
  _ShopItem get _value => super._value as _ShopItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? category = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? rating = freezed,
  }) {
    return _then(_ShopItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as ShopItemRating,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShopItem implements _ShopItem {
  const _$_ShopItem(
      {required this.id,
      required this.title,
      required this.price,
      required this.category,
      required this.description,
      required this.image,
      required this.rating});

  factory _$_ShopItem.fromJson(Map<String, dynamic> json) =>
      _$_$_ShopItemFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final double price;
  @override
  final String category;
  @override
  final String description;
  @override
  final String image;
  @override
  final ShopItemRating rating;

  @override
  String toString() {
    return 'ShopItem(id: $id, title: $title, price: $price, category: $category, description: $description, image: $image, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShopItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(rating);

  @JsonKey(ignore: true)
  @override
  _$ShopItemCopyWith<_ShopItem> get copyWith =>
      __$ShopItemCopyWithImpl<_ShopItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ShopItemToJson(this);
  }
}

abstract class _ShopItem implements ShopItem {
  const factory _ShopItem(
      {required int id,
      required String title,
      required double price,
      required String category,
      required String description,
      required String image,
      required ShopItemRating rating}) = _$_ShopItem;

  factory _ShopItem.fromJson(Map<String, dynamic> json) = _$_ShopItem.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  double get price => throw _privateConstructorUsedError;
  @override
  String get category => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  ShopItemRating get rating => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShopItemCopyWith<_ShopItem> get copyWith =>
      throw _privateConstructorUsedError;
}
