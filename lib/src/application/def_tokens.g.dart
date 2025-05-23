// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'def_tokens.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$defTokensRepositoryImplHash() =>
    r'806e714403f82b915d0326f819a1423f9d6a7893';

/// See also [defTokensRepositoryImpl].
@ProviderFor(defTokensRepositoryImpl)
final defTokensRepositoryImplProvider =
    AutoDisposeProvider<DefTokensRepositoryImpl>.internal(
      defTokensRepositoryImpl,
      name: r'defTokensRepositoryImplProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$defTokensRepositoryImplHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DefTokensRepositoryImplRef =
    AutoDisposeProviderRef<DefTokensRepositoryImpl>;
String _$getDefTokenHash() => r'50f24c44fb1f600febf93895e1be570c7628f3ea';

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

/// See also [getDefToken].
@ProviderFor(getDefToken)
const getDefTokenProvider = GetDefTokenFamily();

/// See also [getDefToken].
class GetDefTokenFamily extends Family<AsyncValue<AEToken?>> {
  /// See also [getDefToken].
  const GetDefTokenFamily();

  /// See also [getDefToken].
  GetDefTokenProvider call(Environment environment, String address) {
    return GetDefTokenProvider(environment, address);
  }

  @override
  GetDefTokenProvider getProviderOverride(
    covariant GetDefTokenProvider provider,
  ) {
    return call(provider.environment, provider.address);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getDefTokenProvider';
}

/// See also [getDefToken].
class GetDefTokenProvider extends AutoDisposeFutureProvider<AEToken?> {
  /// See also [getDefToken].
  GetDefTokenProvider(Environment environment, String address)
    : this._internal(
        (ref) => getDefToken(ref as GetDefTokenRef, environment, address),
        from: getDefTokenProvider,
        name: r'getDefTokenProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$getDefTokenHash,
        dependencies: GetDefTokenFamily._dependencies,
        allTransitiveDependencies: GetDefTokenFamily._allTransitiveDependencies,
        environment: environment,
        address: address,
      );

  GetDefTokenProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.environment,
    required this.address,
  }) : super.internal();

  final Environment environment;
  final String address;

  @override
  Override overrideWith(
    FutureOr<AEToken?> Function(GetDefTokenRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetDefTokenProvider._internal(
        (ref) => create(ref as GetDefTokenRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        environment: environment,
        address: address,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<AEToken?> createElement() {
    return _GetDefTokenProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetDefTokenProvider &&
        other.environment == environment &&
        other.address == address;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, environment.hashCode);
    hash = _SystemHash.combine(hash, address.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetDefTokenRef on AutoDisposeFutureProviderRef<AEToken?> {
  /// The parameter `environment` of this provider.
  Environment get environment;

  /// The parameter `address` of this provider.
  String get address;
}

class _GetDefTokenProviderElement
    extends AutoDisposeFutureProviderElement<AEToken?>
    with GetDefTokenRef {
  _GetDefTokenProviderElement(super.provider);

  @override
  Environment get environment => (origin as GetDefTokenProvider).environment;
  @override
  String get address => (origin as GetDefTokenProvider).address;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
