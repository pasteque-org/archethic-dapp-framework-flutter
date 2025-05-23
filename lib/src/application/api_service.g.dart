// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$apiServiceHash() => r'781837c3e2aa8c341ec8a45f196eb7f099ee441f';

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

/// See also [apiService].
@ProviderFor(apiService)
const apiServiceProvider = ApiServiceFamily();

/// See also [apiService].
class ApiServiceFamily extends Family<ApiService> {
  /// See also [apiService].
  const ApiServiceFamily();

  /// See also [apiService].
  ApiServiceProvider call(Environment environment) {
    return ApiServiceProvider(environment);
  }

  @override
  ApiServiceProvider getProviderOverride(
    covariant ApiServiceProvider provider,
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
  String? get name => r'apiServiceProvider';
}

/// See also [apiService].
class ApiServiceProvider extends AutoDisposeProvider<ApiService> {
  /// See also [apiService].
  ApiServiceProvider(Environment environment)
    : this._internal(
        (ref) => apiService(ref as ApiServiceRef, environment),
        from: apiServiceProvider,
        name: r'apiServiceProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$apiServiceHash,
        dependencies: ApiServiceFamily._dependencies,
        allTransitiveDependencies: ApiServiceFamily._allTransitiveDependencies,
        environment: environment,
      );

  ApiServiceProvider._internal(
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
  Override overrideWith(ApiService Function(ApiServiceRef provider) create) {
    return ProviderOverride(
      origin: this,
      override: ApiServiceProvider._internal(
        (ref) => create(ref as ApiServiceRef),
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
  AutoDisposeProviderElement<ApiService> createElement() {
    return _ApiServiceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ApiServiceProvider && other.environment == environment;
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
mixin ApiServiceRef on AutoDisposeProviderRef<ApiService> {
  /// The parameter `environment` of this provider.
  Environment get environment;
}

class _ApiServiceProviderElement extends AutoDisposeProviderElement<ApiService>
    with ApiServiceRef {
  _ApiServiceProviderElement(super.provider);

  @override
  Environment get environment => (origin as ApiServiceProvider).environment;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
