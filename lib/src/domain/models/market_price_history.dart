import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_price_history.freezed.dart';
part 'market_price_history.g.dart';

/// Represents the intervals for retrieving market price history.
///
/// The intervals can range from an hour to a year, depending on the granularity
/// of data required.
enum MarketPriceHistoryInterval {
  /// Represents price history for the past hour.
  hour,

  /// Represents price history for the past day.
  day,

  /// Represents price history for the past week.
  week,

  /// Represents price history for the past two weeks.
  twoWeeks,

  /// Represents price history for the past month.
  month,

  /// Represents price history for the past two months.
  twoMonths,

  /// Represents price history for the past year.
  year,
}

/// A JSON converter for the [PriceHistoryValue] class.
///
/// This converter handles serialization and deserialization of
/// [PriceHistoryValue] instances to and from JSON format.
class PriceHistoryValueConverter
    implements JsonConverter<PriceHistoryValue, Map<String, dynamic>> {
  /// Creates a [PriceHistoryValueConverter].
  const PriceHistoryValueConverter();

  @override
  PriceHistoryValue fromJson(final Map<String, dynamic> json) {
    return PriceHistoryValue.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(final PriceHistoryValue object) =>
      object.toJson();
}

/// Represents a single entry in the price history of a market asset.
///
/// Each entry includes the price of the asset at a specific time.
@freezed
abstract class PriceHistoryValue with _$PriceHistoryValue {
  /// Creates a [PriceHistoryValue].
  ///
  /// The [price] represents the value of the asset, and [time] represents
  /// the exact time of the price point.
  const factory PriceHistoryValue({
    /// The price of the asset at the specified time.
    required final num price,

    /// The timestamp for the price entry.
    required final DateTime time,
  }) = _PriceHistoryValue;

  /// Creates a [PriceHistoryValue] from a JSON object.
  ///
  /// This factory method is used to deserialize JSON data into a
  /// [PriceHistoryValue] instance.
  factory PriceHistoryValue.fromJson(final Map<String, dynamic> json) =>
      _$PriceHistoryValueFromJson(json);
}
