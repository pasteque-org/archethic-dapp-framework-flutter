// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_price_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PriceHistoryValue _$PriceHistoryValueFromJson(Map<String, dynamic> json) =>
    _PriceHistoryValue(
      price: json['price'] as num,
      time: DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$PriceHistoryValueToJson(_PriceHistoryValue instance) =>
    <String, dynamic>{
      'price': instance.price,
      'time': instance.time.toIso8601String(),
    };
