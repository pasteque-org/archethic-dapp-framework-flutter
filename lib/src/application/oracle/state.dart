import 'package:archethic_lib_dart/archethic_lib_dart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';
part 'state.g.dart';

extension OraclePriceConverterExt on OracleUcoPrice {
  ArchethicOracleUCO get toArchethic => ArchethicOracleUCO(
    timestamp: timestamp ?? 0,
    eur: uco?.eur ?? 0,
    usd: uco?.usd ?? 0,
  );
}

/// A JSON converter for [ArchethicOracleUCO].
///
/// This converter handles the serialization and deserialization of
/// [ArchethicOracleUCO] instances to and from JSON.
class ArchethicOracleUCOJsonConverter
    extends JsonConverter<ArchethicOracleUCO, Map<String, dynamic>> {
  /// Creates a new [ArchethicOracleUCOJsonConverter].
  const ArchethicOracleUCOJsonConverter();

  @override
  ArchethicOracleUCO fromJson(final Map<String, dynamic> json) {
    return ArchethicOracleUCO.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(final ArchethicOracleUCO object) =>
      object.toJson();
}

/// Represents the UCO price information provided by the Archethic Oracle.
///
/// This class includes information about the price of UCO in various fiat
/// currencies, such as EUR and USD, along with a timestamp indicating
/// when the data was retrieved.
///
/// Example:
/// ```dart
/// final ucoData = ArchethicOracleUCO(
///   timestamp: 1672531199,
///   eur: 10.5,
///   usd: 12.3,
/// );
/// ```
@freezed
abstract class ArchethicOracleUCO with _$ArchethicOracleUCO {
  /// Creates a new [ArchethicOracleUCO] instance.
  ///
  /// [timestamp] represents the time when the data was retrieved (in UNIX format).
  /// [eur] and [usd] represent the price of UCO in Euros and US Dollars, respectively.
  const factory ArchethicOracleUCO({
    /// The timestamp (UNIX format) when the data was retrieved.
    @Default(0) final int timestamp,

    /// The price of UCO in Euros.
    @Default(0) final double eur,

    /// The price of UCO in US Dollars.
    @Default(0) final double usd,
  }) = _ArchethicOracleUCO;

  /// Creates an [ArchethicOracleUCO] instance from a JSON object.
  ///
  /// This factory method is used for deserializing JSON data into
  /// an [ArchethicOracleUCO] instance.
  factory ArchethicOracleUCO.fromJson(final Map<String, dynamic> json) =>
      _$ArchethicOracleUCOFromJson(json);
}
