// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verified_tokens.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifiedTokens {

/// A list of verified token identifiers on the Devnet.
 List<String> get devnet;
/// Create a copy of VerifiedTokens
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifiedTokensCopyWith<VerifiedTokens> get copyWith => _$VerifiedTokensCopyWithImpl<VerifiedTokens>(this as VerifiedTokens, _$identity);

  /// Serializes this VerifiedTokens to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifiedTokens&&const DeepCollectionEquality().equals(other.devnet, devnet));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(devnet));

@override
String toString() {
  return 'VerifiedTokens(devnet: $devnet)';
}


}

/// @nodoc
abstract mixin class $VerifiedTokensCopyWith<$Res>  {
  factory $VerifiedTokensCopyWith(VerifiedTokens value, $Res Function(VerifiedTokens) _then) = _$VerifiedTokensCopyWithImpl;
@useResult
$Res call({
 List<String> devnet
});




}
/// @nodoc
class _$VerifiedTokensCopyWithImpl<$Res>
    implements $VerifiedTokensCopyWith<$Res> {
  _$VerifiedTokensCopyWithImpl(this._self, this._then);

  final VerifiedTokens _self;
  final $Res Function(VerifiedTokens) _then;

/// Create a copy of VerifiedTokens
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? devnet = null,}) {
  return _then(_self.copyWith(
devnet: null == devnet ? _self.devnet : devnet // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _VerifiedTokens implements VerifiedTokens {
  const _VerifiedTokens({required final  List<String> devnet}): _devnet = devnet;
  factory _VerifiedTokens.fromJson(Map<String, dynamic> json) => _$VerifiedTokensFromJson(json);

/// A list of verified token identifiers on the Devnet.
 final  List<String> _devnet;
/// A list of verified token identifiers on the Devnet.
@override List<String> get devnet {
  if (_devnet is EqualUnmodifiableListView) return _devnet;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_devnet);
}


/// Create a copy of VerifiedTokens
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifiedTokensCopyWith<_VerifiedTokens> get copyWith => __$VerifiedTokensCopyWithImpl<_VerifiedTokens>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifiedTokensToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifiedTokens&&const DeepCollectionEquality().equals(other._devnet, _devnet));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_devnet));

@override
String toString() {
  return 'VerifiedTokens(devnet: $devnet)';
}


}

/// @nodoc
abstract mixin class _$VerifiedTokensCopyWith<$Res> implements $VerifiedTokensCopyWith<$Res> {
  factory _$VerifiedTokensCopyWith(_VerifiedTokens value, $Res Function(_VerifiedTokens) _then) = __$VerifiedTokensCopyWithImpl;
@override @useResult
$Res call({
 List<String> devnet
});




}
/// @nodoc
class __$VerifiedTokensCopyWithImpl<$Res>
    implements _$VerifiedTokensCopyWith<$Res> {
  __$VerifiedTokensCopyWithImpl(this._self, this._then);

  final _VerifiedTokens _self;
  final $Res Function(_VerifiedTokens) _then;

/// Create a copy of VerifiedTokens
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? devnet = null,}) {
  return _then(_VerifiedTokens(
devnet: null == devnet ? _self._devnet : devnet // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
