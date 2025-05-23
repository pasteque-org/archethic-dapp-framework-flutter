// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_price.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$coinPriceRepositoryHash() =>
    r'69c941f4de25760a9ffb5725ca536be4ea49d1ae';

/// Provides an instance of [CoinPriceRepositoryImpl].
///
/// This repository is used to fetch cryptocurrency prices from an external source.
///
/// Copied from [_coinPriceRepository].
@ProviderFor(_coinPriceRepository)
final _coinPriceRepositoryProvider =
    AutoDisposeProvider<CoinPriceRepositoryImpl>.internal(
      _coinPriceRepository,
      name: r'_coinPriceRepositoryProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$coinPriceRepositoryHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef _CoinPriceRepositoryRef =
    AutoDisposeProviderRef<CoinPriceRepositoryImpl>;
String _$coinPriceHash() => r'06ce415937e98944d78b7e78d9e14aa148f4ff83';

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

/// Fetches the price of a cryptocurrency based on its address.
///
/// This provider retrieves the token's UCID and uses it to find the corresponding price.
/// If the UCID cannot be resolved, the price defaults to 0.
///
/// Example usage:
/// ```dart
/// final price = await ref.read(coinPriceProvider(address: 'some-address').future);
/// ```
///
/// Copied from [_coinPrice].
@ProviderFor(_coinPrice)
const _coinPriceProvider = _CoinPriceFamily();

/// Fetches the price of a cryptocurrency based on its address.
///
/// This provider retrieves the token's UCID and uses it to find the corresponding price.
/// If the UCID cannot be resolved, the price defaults to 0.
///
/// Example usage:
/// ```dart
/// final price = await ref.read(coinPriceProvider(address: 'some-address').future);
/// ```
///
/// Copied from [_coinPrice].
class _CoinPriceFamily extends Family<AsyncValue<double>> {
  /// Fetches the price of a cryptocurrency based on its address.
  ///
  /// This provider retrieves the token's UCID and uses it to find the corresponding price.
  /// If the UCID cannot be resolved, the price defaults to 0.
  ///
  /// Example usage:
  /// ```dart
  /// final price = await ref.read(coinPriceProvider(address: 'some-address').future);
  /// ```
  ///
  /// Copied from [_coinPrice].
  const _CoinPriceFamily();

  /// Fetches the price of a cryptocurrency based on its address.
  ///
  /// This provider retrieves the token's UCID and uses it to find the corresponding price.
  /// If the UCID cannot be resolved, the price defaults to 0.
  ///
  /// Example usage:
  /// ```dart
  /// final price = await ref.read(coinPriceProvider(address: 'some-address').future);
  /// ```
  ///
  /// Copied from [_coinPrice].
  _CoinPriceProvider call({required String address, Environment? environment}) {
    return _CoinPriceProvider(address: address, environment: environment);
  }

  @override
  _CoinPriceProvider getProviderOverride(
    covariant _CoinPriceProvider provider,
  ) {
    return call(address: provider.address, environment: provider.environment);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'_coinPriceProvider';
}

/// Fetches the price of a cryptocurrency based on its address.
///
/// This provider retrieves the token's UCID and uses it to find the corresponding price.
/// If the UCID cannot be resolved, the price defaults to 0.
///
/// Example usage:
/// ```dart
/// final price = await ref.read(coinPriceProvider(address: 'some-address').future);
/// ```
///
/// Copied from [_coinPrice].
class _CoinPriceProvider extends AutoDisposeFutureProvider<double> {
  /// Fetches the price of a cryptocurrency based on its address.
  ///
  /// This provider retrieves the token's UCID and uses it to find the corresponding price.
  /// If the UCID cannot be resolved, the price defaults to 0.
  ///
  /// Example usage:
  /// ```dart
  /// final price = await ref.read(coinPriceProvider(address: 'some-address').future);
  /// ```
  ///
  /// Copied from [_coinPrice].
  _CoinPriceProvider({required String address, Environment? environment})
    : this._internal(
        (ref) => _coinPrice(
          ref as _CoinPriceRef,
          address: address,
          environment: environment,
        ),
        from: _coinPriceProvider,
        name: r'_coinPriceProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$coinPriceHash,
        dependencies: _CoinPriceFamily._dependencies,
        allTransitiveDependencies: _CoinPriceFamily._allTransitiveDependencies,
        address: address,
        environment: environment,
      );

  _CoinPriceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.address,
    required this.environment,
  }) : super.internal();

  final String address;
  final Environment? environment;

  @override
  Override overrideWith(
    FutureOr<double> Function(_CoinPriceRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: _CoinPriceProvider._internal(
        (ref) => create(ref as _CoinPriceRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        address: address,
        environment: environment,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<double> createElement() {
    return _CoinPriceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is _CoinPriceProvider &&
        other.address == address &&
        other.environment == environment;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, address.hashCode);
    hash = _SystemHash.combine(hash, environment.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin _CoinPriceRef on AutoDisposeFutureProviderRef<double> {
  /// The parameter `address` of this provider.
  String get address;

  /// The parameter `environment` of this provider.
  Environment? get environment;
}

class _CoinPriceProviderElement extends AutoDisposeFutureProviderElement<double>
    with _CoinPriceRef {
  _CoinPriceProviderElement(super.provider);

  @override
  String get address => (origin as _CoinPriceProvider).address;
  @override
  Environment? get environment => (origin as _CoinPriceProvider).environment;
}

String _$coinPricesNotifierHash() =>
    r'27a528b58e8dcb92f6596e91b2d08e28a0dffdff';

/// A notifier responsible for managing and updating cryptocurrency prices.
///
/// This notifier fetches cryptocurrency prices from the repository at
/// regular intervals (1 minute) and updates the state with the latest prices.
///
/// Copied from [_CoinPricesNotifier].
@ProviderFor(_CoinPricesNotifier)
final _coinPricesNotifierProvider =
    AutoDisposeNotifierProvider<_CoinPricesNotifier, CryptoPrice>.internal(
      _CoinPricesNotifier.new,
      name: r'_coinPricesNotifierProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$coinPricesNotifierHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$CoinPricesNotifier = AutoDisposeNotifier<CryptoPrice>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
