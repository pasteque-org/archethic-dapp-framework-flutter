// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ae_token_pair.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AETokenPair {

/// The first token in the pair.
@AETokenJsonConverter() AEToken get token1;/// The second token in the pair.
@AETokenJsonConverter() AEToken get token2;
/// Create a copy of AETokenPair
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AETokenPairCopyWith<AETokenPair> get copyWith => _$AETokenPairCopyWithImpl<AETokenPair>(this as AETokenPair, _$identity);

  /// Serializes this AETokenPair to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AETokenPair&&(identical(other.token1, token1) || other.token1 == token1)&&(identical(other.token2, token2) || other.token2 == token2));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token1,token2);

@override
String toString() {
  return 'AETokenPair(token1: $token1, token2: $token2)';
}


}

/// @nodoc
abstract mixin class $AETokenPairCopyWith<$Res>  {
  factory $AETokenPairCopyWith(AETokenPair value, $Res Function(AETokenPair) _then) = _$AETokenPairCopyWithImpl;
@useResult
$Res call({
@AETokenJsonConverter() AEToken token1,@AETokenJsonConverter() AEToken token2
});


$AETokenCopyWith<$Res> get token1;$AETokenCopyWith<$Res> get token2;

}
/// @nodoc
class _$AETokenPairCopyWithImpl<$Res>
    implements $AETokenPairCopyWith<$Res> {
  _$AETokenPairCopyWithImpl(this._self, this._then);

  final AETokenPair _self;
  final $Res Function(AETokenPair) _then;

/// Create a copy of AETokenPair
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token1 = null,Object? token2 = null,}) {
  return _then(_self.copyWith(
token1: null == token1 ? _self.token1 : token1 // ignore: cast_nullable_to_non_nullable
as AEToken,token2: null == token2 ? _self.token2 : token2 // ignore: cast_nullable_to_non_nullable
as AEToken,
  ));
}
/// Create a copy of AETokenPair
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AETokenCopyWith<$Res> get token1 {
  
  return $AETokenCopyWith<$Res>(_self.token1, (value) {
    return _then(_self.copyWith(token1: value));
  });
}/// Create a copy of AETokenPair
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AETokenCopyWith<$Res> get token2 {
  
  return $AETokenCopyWith<$Res>(_self.token2, (value) {
    return _then(_self.copyWith(token2: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _AETokenPair extends AETokenPair {
  const _AETokenPair({@AETokenJsonConverter() required this.token1, @AETokenJsonConverter() required this.token2}): super._();
  factory _AETokenPair.fromJson(Map<String, dynamic> json) => _$AETokenPairFromJson(json);

/// The first token in the pair.
@override@AETokenJsonConverter() final  AEToken token1;
/// The second token in the pair.
@override@AETokenJsonConverter() final  AEToken token2;

/// Create a copy of AETokenPair
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AETokenPairCopyWith<_AETokenPair> get copyWith => __$AETokenPairCopyWithImpl<_AETokenPair>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AETokenPairToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AETokenPair&&(identical(other.token1, token1) || other.token1 == token1)&&(identical(other.token2, token2) || other.token2 == token2));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token1,token2);

@override
String toString() {
  return 'AETokenPair(token1: $token1, token2: $token2)';
}


}

/// @nodoc
abstract mixin class _$AETokenPairCopyWith<$Res> implements $AETokenPairCopyWith<$Res> {
  factory _$AETokenPairCopyWith(_AETokenPair value, $Res Function(_AETokenPair) _then) = __$AETokenPairCopyWithImpl;
@override @useResult
$Res call({
@AETokenJsonConverter() AEToken token1,@AETokenJsonConverter() AEToken token2
});


@override $AETokenCopyWith<$Res> get token1;@override $AETokenCopyWith<$Res> get token2;

}
/// @nodoc
class __$AETokenPairCopyWithImpl<$Res>
    implements _$AETokenPairCopyWith<$Res> {
  __$AETokenPairCopyWithImpl(this._self, this._then);

  final _AETokenPair _self;
  final $Res Function(_AETokenPair) _then;

/// Create a copy of AETokenPair
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token1 = null,Object? token2 = null,}) {
  return _then(_AETokenPair(
token1: null == token1 ? _self.token1 : token1 // ignore: cast_nullable_to_non_nullable
as AEToken,token2: null == token2 ? _self.token2 : token2 // ignore: cast_nullable_to_non_nullable
as AEToken,
  ));
}

/// Create a copy of AETokenPair
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AETokenCopyWith<$Res> get token1 {
  
  return $AETokenCopyWith<$Res>(_self.token1, (value) {
    return _then(_self.copyWith(token1: value));
  });
}/// Create a copy of AETokenPair
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AETokenCopyWith<$Res> get token2 {
  
  return $AETokenCopyWith<$Res>(_self.token2, (value) {
    return _then(_self.copyWith(token2: value));
  });
}
}

// dart format on
