// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'shop_item_rating.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopItemRating _$ShopItemRatingFromJson(Map<String, dynamic> json) {
  return _ShopItemRating.fromJson(json);
}

/// @nodoc
class _$ShopItemRatingTearOff {
  const _$ShopItemRatingTearOff();

  _ShopItemRating call({required double rate, required dynamic count}) {
    return _ShopItemRating(
      rate: rate,
      count: count,
    );
  }

  ShopItemRating fromJson(Map<String, Object> json) {
    return ShopItemRating.fromJson(json);
  }
}

/// @nodoc
const $ShopItemRating = _$ShopItemRatingTearOff();

/// @nodoc
mixin _$ShopItemRating {
  double get rate => throw _privateConstructorUsedError;
  dynamic get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopItemRatingCopyWith<ShopItemRating> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopItemRatingCopyWith<$Res> {
  factory $ShopItemRatingCopyWith(
          ShopItemRating value, $Res Function(ShopItemRating) then) =
      _$ShopItemRatingCopyWithImpl<$Res>;
  $Res call({double rate, dynamic count});
}

/// @nodoc
class _$ShopItemRatingCopyWithImpl<$Res>
    implements $ShopItemRatingCopyWith<$Res> {
  _$ShopItemRatingCopyWithImpl(this._value, this._then);

  final ShopItemRating _value;
  // ignore: unused_field
  final $Res Function(ShopItemRating) _then;

  @override
  $Res call({
    Object? rate = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$ShopItemRatingCopyWith<$Res>
    implements $ShopItemRatingCopyWith<$Res> {
  factory _$ShopItemRatingCopyWith(
          _ShopItemRating value, $Res Function(_ShopItemRating) then) =
      __$ShopItemRatingCopyWithImpl<$Res>;
  @override
  $Res call({double rate, dynamic count});
}

/// @nodoc
class __$ShopItemRatingCopyWithImpl<$Res>
    extends _$ShopItemRatingCopyWithImpl<$Res>
    implements _$ShopItemRatingCopyWith<$Res> {
  __$ShopItemRatingCopyWithImpl(
      _ShopItemRating _value, $Res Function(_ShopItemRating) _then)
      : super(_value, (v) => _then(v as _ShopItemRating));

  @override
  _ShopItemRating get _value => super._value as _ShopItemRating;

  @override
  $Res call({
    Object? rate = freezed,
    Object? count = freezed,
  }) {
    return _then(_ShopItemRating(
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShopItemRating implements _ShopItemRating {
  const _$_ShopItemRating({required this.rate, required this.count});

  factory _$_ShopItemRating.fromJson(Map<String, dynamic> json) =>
      _$_$_ShopItemRatingFromJson(json);

  @override
  final double rate;
  @override
  final dynamic count;

  @override
  String toString() {
    return 'ShopItemRating(rate: $rate, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShopItemRating &&
            (identical(other.rate, rate) ||
                const DeepCollectionEquality().equals(other.rate, rate)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rate) ^
      const DeepCollectionEquality().hash(count);

  @JsonKey(ignore: true)
  @override
  _$ShopItemRatingCopyWith<_ShopItemRating> get copyWith =>
      __$ShopItemRatingCopyWithImpl<_ShopItemRating>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ShopItemRatingToJson(this);
  }
}

abstract class _ShopItemRating implements ShopItemRating {
  const factory _ShopItemRating(
      {required double rate, required dynamic count}) = _$_ShopItemRating;

  factory _ShopItemRating.fromJson(Map<String, dynamic> json) =
      _$_ShopItemRating.fromJson;

  @override
  double get rate => throw _privateConstructorUsedError;
  @override
  dynamic get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShopItemRatingCopyWith<_ShopItemRating> get copyWith =>
      throw _privateConstructorUsedError;
}
