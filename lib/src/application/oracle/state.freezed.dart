// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ArchethicOracleUCO {

/// The timestamp (UNIX format) when the data was retrieved.
 int get timestamp;/// The price of UCO in Euros.
 double get eur;/// The price of UCO in US Dollars.
 double get usd;
/// Create a copy of ArchethicOracleUCO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArchethicOracleUCOCopyWith<ArchethicOracleUCO> get copyWith => _$ArchethicOracleUCOCopyWithImpl<ArchethicOracleUCO>(this as ArchethicOracleUCO, _$identity);

  /// Serializes this ArchethicOracleUCO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArchethicOracleUCO&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.eur, eur) || other.eur == eur)&&(identical(other.usd, usd) || other.usd == usd));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,eur,usd);

@override
String toString() {
  return 'ArchethicOracleUCO(timestamp: $timestamp, eur: $eur, usd: $usd)';
}


}

/// @nodoc
abstract mixin class $ArchethicOracleUCOCopyWith<$Res>  {
  factory $ArchethicOracleUCOCopyWith(ArchethicOracleUCO value, $Res Function(ArchethicOracleUCO) _then) = _$ArchethicOracleUCOCopyWithImpl;
@useResult
$Res call({
 int timestamp, double eur, double usd
});




}
/// @nodoc
class _$ArchethicOracleUCOCopyWithImpl<$Res>
    implements $ArchethicOracleUCOCopyWith<$Res> {
  _$ArchethicOracleUCOCopyWithImpl(this._self, this._then);

  final ArchethicOracleUCO _self;
  final $Res Function(ArchethicOracleUCO) _then;

/// Create a copy of ArchethicOracleUCO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timestamp = null,Object? eur = null,Object? usd = null,}) {
  return _then(_self.copyWith(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,eur: null == eur ? _self.eur : eur // ignore: cast_nullable_to_non_nullable
as double,usd: null == usd ? _self.usd : usd // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ArchethicOracleUCO implements ArchethicOracleUCO {
  const _ArchethicOracleUCO({this.timestamp = 0, this.eur = 0, this.usd = 0});
  factory _ArchethicOracleUCO.fromJson(Map<String, dynamic> json) => _$ArchethicOracleUCOFromJson(json);

/// The timestamp (UNIX format) when the data was retrieved.
@override@JsonKey() final  int timestamp;
/// The price of UCO in Euros.
@override@JsonKey() final  double eur;
/// The price of UCO in US Dollars.
@override@JsonKey() final  double usd;

/// Create a copy of ArchethicOracleUCO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArchethicOracleUCOCopyWith<_ArchethicOracleUCO> get copyWith => __$ArchethicOracleUCOCopyWithImpl<_ArchethicOracleUCO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArchethicOracleUCOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArchethicOracleUCO&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.eur, eur) || other.eur == eur)&&(identical(other.usd, usd) || other.usd == usd));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,eur,usd);

@override
String toString() {
  return 'ArchethicOracleUCO(timestamp: $timestamp, eur: $eur, usd: $usd)';
}


}

/// @nodoc
abstract mixin class _$ArchethicOracleUCOCopyWith<$Res> implements $ArchethicOracleUCOCopyWith<$Res> {
  factory _$ArchethicOracleUCOCopyWith(_ArchethicOracleUCO value, $Res Function(_ArchethicOracleUCO) _then) = __$ArchethicOracleUCOCopyWithImpl;
@override @useResult
$Res call({
 int timestamp, double eur, double usd
});




}
/// @nodoc
class __$ArchethicOracleUCOCopyWithImpl<$Res>
    implements _$ArchethicOracleUCOCopyWith<$Res> {
  __$ArchethicOracleUCOCopyWithImpl(this._self, this._then);

  final _ArchethicOracleUCO _self;
  final $Res Function(_ArchethicOracleUCO) _then;

/// Create a copy of ArchethicOracleUCO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = null,Object? eur = null,Object? usd = null,}) {
  return _then(_ArchethicOracleUCO(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,eur: null == eur ? _self.eur : eur // ignore: cast_nullable_to_non_nullable
as double,usd: null == usd ? _self.usd : usd // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
