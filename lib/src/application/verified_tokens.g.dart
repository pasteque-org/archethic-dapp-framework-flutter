// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_tokens.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$verifiedTokensRepositoryHash() =>
    r'0fc06e1771b889503a3cdd5e9838fbc383dcf723';

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

/// See also [_verifiedTokensRepository].
@ProviderFor(_verifiedTokensRepository)
const _verifiedTokensRepositoryProvider = _VerifiedTokensRepositoryFamily();

/// See also [_verifiedTokensRepository].
class _VerifiedTokensRepositoryFamily
    extends Family<VerifiedTokensRepositoryInterface> {
  /// See also [_verifiedTokensRepository].
  const _VerifiedTokensRepositoryFamily();

  /// See also [_verifiedTokensRepository].
  _VerifiedTokensRepositoryProvider call(Environment environment) {
    return _VerifiedTokensRepositoryProvider(environment);
  }

  @override
  _VerifiedTokensRepositoryProvider getProviderOverride(
    covariant _VerifiedTokensRepositoryProvider provider,
  ) {
    return call(provider.environment);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'_verifiedTokensRepositoryProvider';
}

/// See also [_verifiedTokensRepository].
class _VerifiedTokensRepositoryProvider
    extends AutoDisposeProvider<VerifiedTokensRepositoryInterface> {
  /// See also [_verifiedTokensRepository].
  _VerifiedTokensRepositoryProvider(Environment environment)
    : this._internal(
        (ref) => _verifiedTokensRepository(
          ref as _VerifiedTokensRepositoryRef,
          environment,
        ),
        from: _verifiedTokensRepositoryProvider,
        name: r'_verifiedTokensRepositoryProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$verifiedTokensRepositoryHash,
        dependencies: _VerifiedTokensRepositoryFamily._dependencies,
        allTransitiveDependencies:
            _VerifiedTokensRepositoryFamily._allTransitiveDependencies,
        environment: environment,
      );

  _VerifiedTokensRepositoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.environment,
  }) : super.internal();

  final Environment environment;

  @override
  Override overrideWith(
    VerifiedTokensRepositoryInterface Function(
      _VerifiedTokensRepositoryRef provider,
    )
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: _VerifiedTokensRepositoryProvider._internal(
        (ref) => create(ref as _VerifiedTokensRepositoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        environment: environment,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<VerifiedTokensRepositoryInterface>
  createElement() {
    return _VerifiedTokensRepositoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is _VerifiedTokensRepositoryProvider &&
        other.environment == environment;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, environment.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin _VerifiedTokensRepositoryRef
    on AutoDisposeProviderRef<VerifiedTokensRepositoryInterface> {
  /// The parameter `environment` of this provider.
  Environment get environment;
}

class _VerifiedTokensRepositoryProviderElement
    extends AutoDisposeProviderElement<VerifiedTokensRepositoryInterface>
    with _VerifiedTokensRepositoryRef {
  _VerifiedTokensRepositoryProviderElement(super.provider);

  @override
  Environment get environment =>
      (origin as _VerifiedTokensRepositoryProvider).environment;
}

String _$verifiedTokensByNetworkHash() =>
    r'0fc792dd213f6c5469cd5ff3810f2b846c8f8894';

/// See also [_verifiedTokensByNetwork].
@ProviderFor(_verifiedTokensByNetwork)
const _verifiedTokensByNetworkProvider = _VerifiedTokensByNetworkFamily();

/// See also [_verifiedTokensByNetwork].
class _VerifiedTokensByNetworkFamily extends Family<AsyncValue<List<String>>> {
  /// See also [_verifiedTokensByNetwork].
  const _VerifiedTokensByNetworkFamily();

  /// See also [_verifiedTokensByNetwork].
  _VerifiedTokensByNetworkProvider call(Environment environment) {
    return _VerifiedTokensByNetworkProvider(environment);
  }

  @override
  _VerifiedTokensByNetworkProvider getProviderOverride(
    covariant _VerifiedTokensByNetworkProvider provider,
  ) {
    return call(provider.environment);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'_verifiedTokensByNetworkProvider';
}

/// See also [_verifiedTokensByNetwork].
class _VerifiedTokensByNetworkProvider
    extends AutoDisposeFutureProvider<List<String>> {
  /// See also [_verifiedTokensByNetwork].
  _VerifiedTokensByNetworkProvider(Environment environment)
    : this._internal(
        (ref) => _verifiedTokensByNetwork(
          ref as _VerifiedTokensByNetworkRef,
          environment,
        ),
        from: _verifiedTokensByNetworkProvider,
        name: r'_verifiedTokensByNetworkProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$verifiedTokensByNetworkHash,
        dependencies: _VerifiedTokensByNetworkFamily._dependencies,
        allTransitiveDependencies:
            _VerifiedTokensByNetworkFamily._allTransitiveDependencies,
        environment: environment,
      );

  _VerifiedTokensByNetworkProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.environment,
  }) : super.internal();

  final Environment environment;

  @override
  Override overrideWith(
    FutureOr<List<String>> Function(_VerifiedTokensByNetworkRef provider)
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: _VerifiedTokensByNetworkProvider._internal(
        (ref) => create(ref as _VerifiedTokensByNetworkRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        environment: environment,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<String>> createElement() {
    return _VerifiedTokensByNetworkProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is _VerifiedTokensByNetworkProvider &&
        other.environment == environment;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, environment.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin _VerifiedTokensByNetworkRef
    on AutoDisposeFutureProviderRef<List<String>> {
  /// The parameter `environment` of this provider.
  Environment get environment;
}

class _VerifiedTokensByNetworkProviderElement
    extends AutoDisposeFutureProviderElement<List<String>>
    with _VerifiedTokensByNetworkRef {
  _VerifiedTokensByNetworkProviderElement(super.provider);

  @override
  Environment get environment =>
      (origin as _VerifiedTokensByNetworkProvider).environment;
}

String _$isVerifiedTokenHash() => r'3945e89dc4fa6d747e989b7b8df00d3422d02025';

/// See also [_isVerifiedToken].
@ProviderFor(_isVerifiedToken)
const _isVerifiedTokenProvider = _IsVerifiedTokenFamily();

/// See also [_isVerifiedToken].
class _IsVerifiedTokenFamily extends Family<AsyncValue<bool>> {
  /// See also [_isVerifiedToken].
  const _IsVerifiedTokenFamily();

  /// See also [_isVerifiedToken].
  _IsVerifiedTokenProvider call(Environment environment, String address) {
    return _IsVerifiedTokenProvider(environment, address);
  }

  @override
  _IsVerifiedTokenProvider getProviderOverride(
    covariant _IsVerifiedTokenProvider provider,
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
  String? get name => r'_isVerifiedTokenProvider';
}

/// See also [_isVerifiedToken].
class _IsVerifiedTokenProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [_isVerifiedToken].
  _IsVerifiedTokenProvider(Environment environment, String address)
    : this._internal(
        (ref) =>
            _isVerifiedToken(ref as _IsVerifiedTokenRef, environment, address),
        from: _isVerifiedTokenProvider,
        name: r'_isVerifiedTokenProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$isVerifiedTokenHash,
        dependencies: _IsVerifiedTokenFamily._dependencies,
        allTransitiveDependencies:
            _IsVerifiedTokenFamily._allTransitiveDependencies,
        environment: environment,
        address: address,
      );

  _IsVerifiedTokenProvider._internal(
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
    FutureOr<bool> Function(_IsVerifiedTokenRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: _IsVerifiedTokenProvider._internal(
        (ref) => create(ref as _IsVerifiedTokenRef),
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
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _IsVerifiedTokenProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is _IsVerifiedTokenProvider &&
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
mixin _IsVerifiedTokenRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `environment` of this provider.
  Environment get environment;

  /// The parameter `address` of this provider.
  String get address;
}

class _IsVerifiedTokenProviderElement
    extends AutoDisposeFutureProviderElement<bool>
    with _IsVerifiedTokenRef {
  _IsVerifiedTokenProviderElement(super.provider);

  @override
  Environment get environment =>
      (origin as _IsVerifiedTokenProvider).environment;
  @override
  String get address => (origin as _IsVerifiedTokenProvider).address;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
