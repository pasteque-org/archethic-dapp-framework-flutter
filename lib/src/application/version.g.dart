// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$versionStringHash() => r'b2874cf0d9e8d2b961165ae2b6e151e99f0b95de';

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

/// See also [versionString].
@ProviderFor(versionString)
const versionStringProvider = VersionStringFamily();

/// See also [versionString].
class VersionStringFamily extends Family<AsyncValue<String>> {
  /// See also [versionString].
  const VersionStringFamily();

  /// See also [versionString].
  VersionStringProvider call(AppLocalizations localizations) {
    return VersionStringProvider(localizations);
  }

  @override
  VersionStringProvider getProviderOverride(
    covariant VersionStringProvider provider,
  ) {
    return call(provider.localizations);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'versionStringProvider';
}

/// See also [versionString].
class VersionStringProvider extends AutoDisposeFutureProvider<String> {
  /// See also [versionString].
  VersionStringProvider(AppLocalizations localizations)
    : this._internal(
        (ref) => versionString(ref as VersionStringRef, localizations),
        from: versionStringProvider,
        name: r'versionStringProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$versionStringHash,
        dependencies: VersionStringFamily._dependencies,
        allTransitiveDependencies:
            VersionStringFamily._allTransitiveDependencies,
        localizations: localizations,
      );

  VersionStringProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.localizations,
  }) : super.internal();

  final AppLocalizations localizations;

  @override
  Override overrideWith(
    FutureOr<String> Function(VersionStringRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: VersionStringProvider._internal(
        (ref) => create(ref as VersionStringRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        localizations: localizations,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _VersionStringProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is VersionStringProvider &&
        other.localizations == localizations;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, localizations.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin VersionStringRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `localizations` of this provider.
  AppLocalizations get localizations;
}

class _VersionStringProviderElement
    extends AutoDisposeFutureProviderElement<String>
    with VersionStringRef {
  _VersionStringProviderElement(super.provider);

  @override
  AppLocalizations get localizations =>
      (origin as VersionStringProvider).localizations;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
