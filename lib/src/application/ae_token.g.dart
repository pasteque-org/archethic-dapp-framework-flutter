// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ae_token.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$estimateTokenInFiatHash() =>
    r'cf46ac1df654cb3ad21ed59f0f5f1de7fe708e81';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// Estimates the value of a token in fiat currency.
///
/// This provider fetches the token's price in USD based on its symbol and address.
/// - If the token's symbol is `UCO`, the price is fetched using the Archethic Oracle.
/// - For other tokens, the price is fetched using the Coin Price provider.
///
/// Example:
/// ```dart
/// final priceInFiat = await ref.read(estimateTokenInFiatProvider(token));
/// ```
///
/// Copied from [_estimateTokenInFiat].
@ProviderFor(_estimateTokenInFiat)
const _estimateTokenInFiatProvider = _EstimateTokenInFiatFamily();

/// Estimates the value of a token in fiat currency.
///
/// This provider fetches the token's price in USD based on its symbol and address.
/// - If the token's symbol is `UCO`, the price is fetched using the Archethic Oracle.
/// - For other tokens, the price is fetched using the Coin Price provider.
///
/// Example:
/// ```dart
/// final priceInFiat = await ref.read(estimateTokenInFiatProvider(token));
/// ```
///
/// Copied from [_estimateTokenInFiat].
class _EstimateTokenInFiatFamily extends Family<AsyncValue<double>> {
  /// Estimates the value of a token in fiat currency.
  ///
  /// This provider fetches the token's price in USD based on its symbol and address.
  /// - If the token's symbol is `UCO`, the price is fetched using the Archethic Oracle.
  /// - For other tokens, the price is fetched using the Coin Price provider.
  ///
  /// Example:
  /// ```dart
  /// final priceInFiat = await ref.read(estimateTokenInFiatProvider(token));
  /// ```
  ///
  /// Copied from [_estimateTokenInFiat].
  const _EstimateTokenInFiatFamily();

  /// Estimates the value of a token in fiat currency.
  ///
  /// This provider fetches the token's price in USD based on its symbol and address.
  /// - If the token's symbol is `UCO`, the price is fetched using the Archethic Oracle.
  /// - For other tokens, the price is fetched using the Coin Price provider.
  ///
  /// Example:
  /// ```dart
  /// final priceInFiat = await ref.read(estimateTokenInFiatProvider(token));
  /// ```
  ///
  /// Copied from [_estimateTokenInFiat].
  _EstimateTokenInFiatProvider call(AEToken token) {
    return _EstimateTokenInFiatProvider(token);
  }

  @override
  _EstimateTokenInFiatProvider getProviderOverride(
    covariant _EstimateTokenInFiatProvider provider,
  ) {
    return call(provider.token);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'_estimateTokenInFiatProvider';
}

/// Estimates the value of a token in fiat currency.
///
/// This provider fetches the token's price in USD based on its symbol and address.
/// - If the token's symbol is `UCO`, the price is fetched using the Archethic Oracle.
/// - For other tokens, the price is fetched using the Coin Price provider.
///
/// Example:
/// ```dart
/// final priceInFiat = await ref.read(estimateTokenInFiatProvider(token));
/// ```
///
/// Copied from [_estimateTokenInFiat].
class _EstimateTokenInFiatProvider extends AutoDisposeFutureProvider<double> {
  /// Estimates the value of a token in fiat currency.
  ///
  /// This provider fetches the token's price in USD based on its symbol and address.
  /// - If the token's symbol is `UCO`, the price is fetched using the Archethic Oracle.
  /// - For other tokens, the price is fetched using the Coin Price provider.
  ///
  /// Example:
  /// ```dart
  /// final priceInFiat = await ref.read(estimateTokenInFiatProvider(token));
  /// ```
  ///
  /// Copied from [_estimateTokenInFiat].
  _EstimateTokenInFiatProvider(AEToken token)
    : this._internal(
        (ref) => _estimateTokenInFiat(ref as _EstimateTokenInFiatRef, token),
        from: _estimateTokenInFiatProvider,
        name: r'_estimateTokenInFiatProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$estimateTokenInFiatHash,
        dependencies: _EstimateTokenInFiatFamily._dependencies,
        allTransitiveDependencies:
            _EstimateTokenInFiatFamily._allTransitiveDependencies,
        token: token,
      );

  _EstimateTokenInFiatProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.token,
  }) : super.internal();

  final AEToken token;

  @override
  Override overrideWith(
    FutureOr<double> Function(_EstimateTokenInFiatRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: _EstimateTokenInFiatProvider._internal(
        (ref) => create(ref as _EstimateTokenInFiatRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        token: token,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<double> createElement() {
    return _EstimateTokenInFiatProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is _EstimateTokenInFiatProvider && other.token == token;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, token.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin _EstimateTokenInFiatRef on AutoDisposeFutureProviderRef<double> {
  /// The parameter `token` of this provider.
  AEToken get token;
}

class _EstimateTokenInFiatProviderElement
    extends AutoDisposeFutureProviderElement<double>
    with _EstimateTokenInFiatRef {
  _EstimateTokenInFiatProviderElement(super.provider);

  @override
  AEToken get token => (origin as _EstimateTokenInFiatProvider).token;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
