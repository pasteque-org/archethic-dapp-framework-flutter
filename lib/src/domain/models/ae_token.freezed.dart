// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ae_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AEToken {

/// The name of the token.
 String get name;/// The address of the token on the Archethic blockchain.
 String? get address;/// The icon URL or path representing the token.
 String? get icon;/// The symbol of the token.
 String get symbol;/// The current balance of the token.
 double get balance;/// The reserve balance of the token.
 double get reserve;/// The total supply of the token.
 double get supply;/// Indicates if the token is verified.
 bool get isVerified;/// Indicates if the token is a liquidity provider token.
 bool get isLpToken;/// The pair of tokens for LP tokens.
@AETokenPairJsonConverter() AETokenPair? get lpTokenPair; int? get ucid;
/// Create a copy of AEToken
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AETokenCopyWith<AEToken> get copyWith => _$AETokenCopyWithImpl<AEToken>(this as AEToken, _$identity);

  /// Serializes this AEToken to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AEToken&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.reserve, reserve) || other.reserve == reserve)&&(identical(other.supply, supply) || other.supply == supply)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.isLpToken, isLpToken) || other.isLpToken == isLpToken)&&(identical(other.lpTokenPair, lpTokenPair) || other.lpTokenPair == lpTokenPair)&&(identical(other.ucid, ucid) || other.ucid == ucid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,address,icon,symbol,balance,reserve,supply,isVerified,isLpToken,lpTokenPair,ucid);

@override
String toString() {
  return 'AEToken(name: $name, address: $address, icon: $icon, symbol: $symbol, balance: $balance, reserve: $reserve, supply: $supply, isVerified: $isVerified, isLpToken: $isLpToken, lpTokenPair: $lpTokenPair, ucid: $ucid)';
}


}

/// @nodoc
abstract mixin class $AETokenCopyWith<$Res>  {
  factory $AETokenCopyWith(AEToken value, $Res Function(AEToken) _then) = _$AETokenCopyWithImpl;
@useResult
$Res call({
 String name, String? address, String? icon, String symbol, double balance, double reserve, double supply, bool isVerified, bool isLpToken,@AETokenPairJsonConverter() AETokenPair? lpTokenPair, int? ucid
});


$AETokenPairCopyWith<$Res>? get lpTokenPair;

}
/// @nodoc
class _$AETokenCopyWithImpl<$Res>
    implements $AETokenCopyWith<$Res> {
  _$AETokenCopyWithImpl(this._self, this._then);

  final AEToken _self;
  final $Res Function(AEToken) _then;

/// Create a copy of AEToken
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? address = freezed,Object? icon = freezed,Object? symbol = null,Object? balance = null,Object? reserve = null,Object? supply = null,Object? isVerified = null,Object? isLpToken = null,Object? lpTokenPair = freezed,Object? ucid = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double,reserve: null == reserve ? _self.reserve : reserve // ignore: cast_nullable_to_non_nullable
as double,supply: null == supply ? _self.supply : supply // ignore: cast_nullable_to_non_nullable
as double,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,isLpToken: null == isLpToken ? _self.isLpToken : isLpToken // ignore: cast_nullable_to_non_nullable
as bool,lpTokenPair: freezed == lpTokenPair ? _self.lpTokenPair : lpTokenPair // ignore: cast_nullable_to_non_nullable
as AETokenPair?,ucid: freezed == ucid ? _self.ucid : ucid // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of AEToken
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AETokenPairCopyWith<$Res>? get lpTokenPair {
    if (_self.lpTokenPair == null) {
    return null;
  }

  return $AETokenPairCopyWith<$Res>(_self.lpTokenPair!, (value) {
    return _then(_self.copyWith(lpTokenPair: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _AEToken extends AEToken {
  const _AEToken({this.name = '', this.address, this.icon, this.symbol = '', this.balance = 0.0, this.reserve = 0.0, this.supply = 0.0, this.isVerified = false, this.isLpToken = false, @AETokenPairJsonConverter() this.lpTokenPair, this.ucid}): super._();
  factory _AEToken.fromJson(Map<String, dynamic> json) => _$AETokenFromJson(json);

/// The name of the token.
@override@JsonKey() final  String name;
/// The address of the token on the Archethic blockchain.
@override final  String? address;
/// The icon URL or path representing the token.
@override final  String? icon;
/// The symbol of the token.
@override@JsonKey() final  String symbol;
/// The current balance of the token.
@override@JsonKey() final  double balance;
/// The reserve balance of the token.
@override@JsonKey() final  double reserve;
/// The total supply of the token.
@override@JsonKey() final  double supply;
/// Indicates if the token is verified.
@override@JsonKey() final  bool isVerified;
/// Indicates if the token is a liquidity provider token.
@override@JsonKey() final  bool isLpToken;
/// The pair of tokens for LP tokens.
@override@AETokenPairJsonConverter() final  AETokenPair? lpTokenPair;
@override final  int? ucid;

/// Create a copy of AEToken
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AETokenCopyWith<_AEToken> get copyWith => __$AETokenCopyWithImpl<_AEToken>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AETokenToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AEToken&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.reserve, reserve) || other.reserve == reserve)&&(identical(other.supply, supply) || other.supply == supply)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.isLpToken, isLpToken) || other.isLpToken == isLpToken)&&(identical(other.lpTokenPair, lpTokenPair) || other.lpTokenPair == lpTokenPair)&&(identical(other.ucid, ucid) || other.ucid == ucid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,address,icon,symbol,balance,reserve,supply,isVerified,isLpToken,lpTokenPair,ucid);

@override
String toString() {
  return 'AEToken(name: $name, address: $address, icon: $icon, symbol: $symbol, balance: $balance, reserve: $reserve, supply: $supply, isVerified: $isVerified, isLpToken: $isLpToken, lpTokenPair: $lpTokenPair, ucid: $ucid)';
}


}

/// @nodoc
abstract mixin class _$AETokenCopyWith<$Res> implements $AETokenCopyWith<$Res> {
  factory _$AETokenCopyWith(_AEToken value, $Res Function(_AEToken) _then) = __$AETokenCopyWithImpl;
@override @useResult
$Res call({
 String name, String? address, String? icon, String symbol, double balance, double reserve, double supply, bool isVerified, bool isLpToken,@AETokenPairJsonConverter() AETokenPair? lpTokenPair, int? ucid
});


@override $AETokenPairCopyWith<$Res>? get lpTokenPair;

}
/// @nodoc
class __$AETokenCopyWithImpl<$Res>
    implements _$AETokenCopyWith<$Res> {
  __$AETokenCopyWithImpl(this._self, this._then);

  final _AEToken _self;
  final $Res Function(_AEToken) _then;

/// Create a copy of AEToken
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? address = freezed,Object? icon = freezed,Object? symbol = null,Object? balance = null,Object? reserve = null,Object? supply = null,Object? isVerified = null,Object? isLpToken = null,Object? lpTokenPair = freezed,Object? ucid = freezed,}) {
  return _then(_AEToken(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double,reserve: null == reserve ? _self.reserve : reserve // ignore: cast_nullable_to_non_nullable
as double,supply: null == supply ? _self.supply : supply // ignore: cast_nullable_to_non_nullable
as double,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,isLpToken: null == isLpToken ? _self.isLpToken : isLpToken // ignore: cast_nullable_to_non_nullable
as bool,lpTokenPair: freezed == lpTokenPair ? _self.lpTokenPair : lpTokenPair // ignore: cast_nullable_to_non_nullable
as AETokenPair?,ucid: freezed == ucid ? _self.ucid : ucid // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of AEToken
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AETokenPairCopyWith<$Res>? get lpTokenPair {
    if (_self.lpTokenPair == null) {
    return null;
  }

  return $AETokenPairCopyWith<$Res>(_self.lpTokenPair!, (value) {
    return _then(_self.copyWith(lpTokenPair: value));
  });
}
}

// dart format on
