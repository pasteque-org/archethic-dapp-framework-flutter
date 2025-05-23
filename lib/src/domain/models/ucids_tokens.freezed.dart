// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ucids_tokens.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UcidsTokens {

/// A map of cryptocurrency names to their UCIDs on the Mainnet.
 Map<String, int> get mainnet;/// A map of cryptocurrency names to their UCIDs on the Testnet.
 Map<String, int> get testnet;/// A map of cryptocurrency names to their UCIDs on the Devnet.
 Map<String, int> get devnet;
/// Create a copy of UcidsTokens
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UcidsTokensCopyWith<UcidsTokens> get copyWith => _$UcidsTokensCopyWithImpl<UcidsTokens>(this as UcidsTokens, _$identity);

  /// Serializes this UcidsTokens to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UcidsTokens&&const DeepCollectionEquality().equals(other.mainnet, mainnet)&&const DeepCollectionEquality().equals(other.testnet, testnet)&&const DeepCollectionEquality().equals(other.devnet, devnet));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(mainnet),const DeepCollectionEquality().hash(testnet),const DeepCollectionEquality().hash(devnet));

@override
String toString() {
  return 'UcidsTokens(mainnet: $mainnet, testnet: $testnet, devnet: $devnet)';
}


}

/// @nodoc
abstract mixin class $UcidsTokensCopyWith<$Res>  {
  factory $UcidsTokensCopyWith(UcidsTokens value, $Res Function(UcidsTokens) _then) = _$UcidsTokensCopyWithImpl;
@useResult
$Res call({
 Map<String, int> mainnet, Map<String, int> testnet, Map<String, int> devnet
});




}
/// @nodoc
class _$UcidsTokensCopyWithImpl<$Res>
    implements $UcidsTokensCopyWith<$Res> {
  _$UcidsTokensCopyWithImpl(this._self, this._then);

  final UcidsTokens _self;
  final $Res Function(UcidsTokens) _then;

/// Create a copy of UcidsTokens
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mainnet = null,Object? testnet = null,Object? devnet = null,}) {
  return _then(_self.copyWith(
mainnet: null == mainnet ? _self.mainnet : mainnet // ignore: cast_nullable_to_non_nullable
as Map<String, int>,testnet: null == testnet ? _self.testnet : testnet // ignore: cast_nullable_to_non_nullable
as Map<String, int>,devnet: null == devnet ? _self.devnet : devnet // ignore: cast_nullable_to_non_nullable
as Map<String, int>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UcidsTokens implements UcidsTokens {
  const _UcidsTokens({required final  Map<String, int> mainnet, required final  Map<String, int> testnet, required final  Map<String, int> devnet}): _mainnet = mainnet,_testnet = testnet,_devnet = devnet;
  factory _UcidsTokens.fromJson(Map<String, dynamic> json) => _$UcidsTokensFromJson(json);

/// A map of cryptocurrency names to their UCIDs on the Mainnet.
 final  Map<String, int> _mainnet;
/// A map of cryptocurrency names to their UCIDs on the Mainnet.
@override Map<String, int> get mainnet {
  if (_mainnet is EqualUnmodifiableMapView) return _mainnet;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_mainnet);
}

/// A map of cryptocurrency names to their UCIDs on the Testnet.
 final  Map<String, int> _testnet;
/// A map of cryptocurrency names to their UCIDs on the Testnet.
@override Map<String, int> get testnet {
  if (_testnet is EqualUnmodifiableMapView) return _testnet;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_testnet);
}

/// A map of cryptocurrency names to their UCIDs on the Devnet.
 final  Map<String, int> _devnet;
/// A map of cryptocurrency names to their UCIDs on the Devnet.
@override Map<String, int> get devnet {
  if (_devnet is EqualUnmodifiableMapView) return _devnet;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_devnet);
}


/// Create a copy of UcidsTokens
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UcidsTokensCopyWith<_UcidsTokens> get copyWith => __$UcidsTokensCopyWithImpl<_UcidsTokens>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UcidsTokensToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UcidsTokens&&const DeepCollectionEquality().equals(other._mainnet, _mainnet)&&const DeepCollectionEquality().equals(other._testnet, _testnet)&&const DeepCollectionEquality().equals(other._devnet, _devnet));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_mainnet),const DeepCollectionEquality().hash(_testnet),const DeepCollectionEquality().hash(_devnet));

@override
String toString() {
  return 'UcidsTokens(mainnet: $mainnet, testnet: $testnet, devnet: $devnet)';
}


}

/// @nodoc
abstract mixin class _$UcidsTokensCopyWith<$Res> implements $UcidsTokensCopyWith<$Res> {
  factory _$UcidsTokensCopyWith(_UcidsTokens value, $Res Function(_UcidsTokens) _then) = __$UcidsTokensCopyWithImpl;
@override @useResult
$Res call({
 Map<String, int> mainnet, Map<String, int> testnet, Map<String, int> devnet
});




}
/// @nodoc
class __$UcidsTokensCopyWithImpl<$Res>
    implements _$UcidsTokensCopyWith<$Res> {
  __$UcidsTokensCopyWithImpl(this._self, this._then);

  final _UcidsTokens _self;
  final $Res Function(_UcidsTokens) _then;

/// Create a copy of UcidsTokens
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mainnet = null,Object? testnet = null,Object? devnet = null,}) {
  return _then(_UcidsTokens(
mainnet: null == mainnet ? _self._mainnet : mainnet // ignore: cast_nullable_to_non_nullable
as Map<String, int>,testnet: null == testnet ? _self._testnet : testnet // ignore: cast_nullable_to_non_nullable
as Map<String, int>,devnet: null == devnet ? _self._devnet : devnet // ignore: cast_nullable_to_non_nullable
as Map<String, int>,
  ));
}


}

// dart format on
