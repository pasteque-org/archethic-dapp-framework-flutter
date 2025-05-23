// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_price_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PriceHistoryValue {

/// The price of the asset at the specified time.
 num get price;/// The timestamp for the price entry.
 DateTime get time;
/// Create a copy of PriceHistoryValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceHistoryValueCopyWith<PriceHistoryValue> get copyWith => _$PriceHistoryValueCopyWithImpl<PriceHistoryValue>(this as PriceHistoryValue, _$identity);

  /// Serializes this PriceHistoryValue to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceHistoryValue&&(identical(other.price, price) || other.price == price)&&(identical(other.time, time) || other.time == time));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,price,time);

@override
String toString() {
  return 'PriceHistoryValue(price: $price, time: $time)';
}


}

/// @nodoc
abstract mixin class $PriceHistoryValueCopyWith<$Res>  {
  factory $PriceHistoryValueCopyWith(PriceHistoryValue value, $Res Function(PriceHistoryValue) _then) = _$PriceHistoryValueCopyWithImpl;
@useResult
$Res call({
 num price, DateTime time
});




}
/// @nodoc
class _$PriceHistoryValueCopyWithImpl<$Res>
    implements $PriceHistoryValueCopyWith<$Res> {
  _$PriceHistoryValueCopyWithImpl(this._self, this._then);

  final PriceHistoryValue _self;
  final $Res Function(PriceHistoryValue) _then;

/// Create a copy of PriceHistoryValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? price = null,Object? time = null,}) {
  return _then(_self.copyWith(
price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PriceHistoryValue implements PriceHistoryValue {
  const _PriceHistoryValue({required this.price, required this.time});
  factory _PriceHistoryValue.fromJson(Map<String, dynamic> json) => _$PriceHistoryValueFromJson(json);

/// The price of the asset at the specified time.
@override final  num price;
/// The timestamp for the price entry.
@override final  DateTime time;

/// Create a copy of PriceHistoryValue
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceHistoryValueCopyWith<_PriceHistoryValue> get copyWith => __$PriceHistoryValueCopyWithImpl<_PriceHistoryValue>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PriceHistoryValueToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceHistoryValue&&(identical(other.price, price) || other.price == price)&&(identical(other.time, time) || other.time == time));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,price,time);

@override
String toString() {
  return 'PriceHistoryValue(price: $price, time: $time)';
}


}

/// @nodoc
abstract mixin class _$PriceHistoryValueCopyWith<$Res> implements $PriceHistoryValueCopyWith<$Res> {
  factory _$PriceHistoryValueCopyWith(_PriceHistoryValue value, $Res Function(_PriceHistoryValue) _then) = __$PriceHistoryValueCopyWithImpl;
@override @useResult
$Res call({
 num price, DateTime time
});




}
/// @nodoc
class __$PriceHistoryValueCopyWithImpl<$Res>
    implements _$PriceHistoryValueCopyWith<$Res> {
  __$PriceHistoryValueCopyWithImpl(this._self, this._then);

  final _PriceHistoryValue _self;
  final $Res Function(_PriceHistoryValue) _then;

/// Create a copy of PriceHistoryValue
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? price = null,Object? time = null,}) {
  return _then(_PriceHistoryValue(
price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
