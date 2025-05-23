// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crypto_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CryptoPrice {

/// The timestamp of the price data, represented as a UNIX timestamp.
 int? get timestamp;/// The price of Bitcoin (BTC) in USD or the relevant currency.
 double get bitcoin;/// The price of Matic (Polygon) in USD or the relevant currency.
 double get matic;/// The price of Ethereum (ETH) in USD or the relevant currency.
 double get ethereum;/// The price of Binance Coin (BNB) in USD or the relevant currency.
 double get bnb;/// The price of USD Coin (USDC) in USD or the relevant currency.
 double get usdc;/// The price of EURE (a euro-backed stablecoin) in USD or the relevant currency.
 double get eure;
/// Create a copy of CryptoPrice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CryptoPriceCopyWith<CryptoPrice> get copyWith => _$CryptoPriceCopyWithImpl<CryptoPrice>(this as CryptoPrice, _$identity);

  /// Serializes this CryptoPrice to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CryptoPrice&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.bitcoin, bitcoin) || other.bitcoin == bitcoin)&&(identical(other.matic, matic) || other.matic == matic)&&(identical(other.ethereum, ethereum) || other.ethereum == ethereum)&&(identical(other.bnb, bnb) || other.bnb == bnb)&&(identical(other.usdc, usdc) || other.usdc == usdc)&&(identical(other.eure, eure) || other.eure == eure));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,bitcoin,matic,ethereum,bnb,usdc,eure);

@override
String toString() {
  return 'CryptoPrice(timestamp: $timestamp, bitcoin: $bitcoin, matic: $matic, ethereum: $ethereum, bnb: $bnb, usdc: $usdc, eure: $eure)';
}


}

/// @nodoc
abstract mixin class $CryptoPriceCopyWith<$Res>  {
  factory $CryptoPriceCopyWith(CryptoPrice value, $Res Function(CryptoPrice) _then) = _$CryptoPriceCopyWithImpl;
@useResult
$Res call({
 int? timestamp, double bitcoin, double matic, double ethereum, double bnb, double usdc, double eure
});




}
/// @nodoc
class _$CryptoPriceCopyWithImpl<$Res>
    implements $CryptoPriceCopyWith<$Res> {
  _$CryptoPriceCopyWithImpl(this._self, this._then);

  final CryptoPrice _self;
  final $Res Function(CryptoPrice) _then;

/// Create a copy of CryptoPrice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timestamp = freezed,Object? bitcoin = null,Object? matic = null,Object? ethereum = null,Object? bnb = null,Object? usdc = null,Object? eure = null,}) {
  return _then(_self.copyWith(
timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int?,bitcoin: null == bitcoin ? _self.bitcoin : bitcoin // ignore: cast_nullable_to_non_nullable
as double,matic: null == matic ? _self.matic : matic // ignore: cast_nullable_to_non_nullable
as double,ethereum: null == ethereum ? _self.ethereum : ethereum // ignore: cast_nullable_to_non_nullable
as double,bnb: null == bnb ? _self.bnb : bnb // ignore: cast_nullable_to_non_nullable
as double,usdc: null == usdc ? _self.usdc : usdc // ignore: cast_nullable_to_non_nullable
as double,eure: null == eure ? _self.eure : eure // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CryptoPrice implements CryptoPrice {
   _CryptoPrice({this.timestamp, this.bitcoin = 0.0, this.matic = 0.0, this.ethereum = 0.0, this.bnb = 0.0, this.usdc = 0.0, this.eure = 0.0});
  factory _CryptoPrice.fromJson(Map<String, dynamic> json) => _$CryptoPriceFromJson(json);

/// The timestamp of the price data, represented as a UNIX timestamp.
@override final  int? timestamp;
/// The price of Bitcoin (BTC) in USD or the relevant currency.
@override@JsonKey() final  double bitcoin;
/// The price of Matic (Polygon) in USD or the relevant currency.
@override@JsonKey() final  double matic;
/// The price of Ethereum (ETH) in USD or the relevant currency.
@override@JsonKey() final  double ethereum;
/// The price of Binance Coin (BNB) in USD or the relevant currency.
@override@JsonKey() final  double bnb;
/// The price of USD Coin (USDC) in USD or the relevant currency.
@override@JsonKey() final  double usdc;
/// The price of EURE (a euro-backed stablecoin) in USD or the relevant currency.
@override@JsonKey() final  double eure;

/// Create a copy of CryptoPrice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CryptoPriceCopyWith<_CryptoPrice> get copyWith => __$CryptoPriceCopyWithImpl<_CryptoPrice>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CryptoPriceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CryptoPrice&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.bitcoin, bitcoin) || other.bitcoin == bitcoin)&&(identical(other.matic, matic) || other.matic == matic)&&(identical(other.ethereum, ethereum) || other.ethereum == ethereum)&&(identical(other.bnb, bnb) || other.bnb == bnb)&&(identical(other.usdc, usdc) || other.usdc == usdc)&&(identical(other.eure, eure) || other.eure == eure));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,bitcoin,matic,ethereum,bnb,usdc,eure);

@override
String toString() {
  return 'CryptoPrice(timestamp: $timestamp, bitcoin: $bitcoin, matic: $matic, ethereum: $ethereum, bnb: $bnb, usdc: $usdc, eure: $eure)';
}


}

/// @nodoc
abstract mixin class _$CryptoPriceCopyWith<$Res> implements $CryptoPriceCopyWith<$Res> {
  factory _$CryptoPriceCopyWith(_CryptoPrice value, $Res Function(_CryptoPrice) _then) = __$CryptoPriceCopyWithImpl;
@override @useResult
$Res call({
 int? timestamp, double bitcoin, double matic, double ethereum, double bnb, double usdc, double eure
});




}
/// @nodoc
class __$CryptoPriceCopyWithImpl<$Res>
    implements _$CryptoPriceCopyWith<$Res> {
  __$CryptoPriceCopyWithImpl(this._self, this._then);

  final _CryptoPrice _self;
  final $Res Function(_CryptoPrice) _then;

/// Create a copy of CryptoPrice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = freezed,Object? bitcoin = null,Object? matic = null,Object? ethereum = null,Object? bnb = null,Object? usdc = null,Object? eure = null,}) {
  return _then(_CryptoPrice(
timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int?,bitcoin: null == bitcoin ? _self.bitcoin : bitcoin // ignore: cast_nullable_to_non_nullable
as double,matic: null == matic ? _self.matic : matic // ignore: cast_nullable_to_non_nullable
as double,ethereum: null == ethereum ? _self.ethereum : ethereum // ignore: cast_nullable_to_non_nullable
as double,bnb: null == bnb ? _self.bnb : bnb // ignore: cast_nullable_to_non_nullable
as double,usdc: null == usdc ? _self.usdc : usdc // ignore: cast_nullable_to_non_nullable
as double,eure: null == eure ? _self.eure : eure // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
