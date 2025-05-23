import 'dart:async';
import 'dart:core';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Keeps track of alive providers.
///
/// > Usage in production is not recommended.
///
/// # Howto use
/// ## Register the observer
///
/// ```dart
/// import 'package:archethic_dapp_framework_flutter/archethic_dapp_framework_flutter.dart' as aedappfm;
///
/// runApp(
///  ProviderScope(
///    observers: [
///      if (kDebugMode) aedappfm.ProvidersTracker(),
///    ],
///    child: const MyApp(),
///  ),
/// ;
/// ```
///
/// ## Check all alive providers
///
/// In debug console, check `ProvidersTracker` content :
///
/// ### Command :
/// ```dart
/// aedappfm.ProvidersTracker().aliveProviders
/// ```
///
/// ### Result :
/// ```dart
/// Set
/// [0] = AutoDisposeProvider (oracleServiceProvider:AutoDisposeProvider<OracleService>#2d1c8)
/// [1] = AutoDisposeAsyncNotifierProviderImpl (_archethicOracleUCONotifierProvider:AutoDisposeAsyncNotifierProviderImpl<_ArchethicOracleUCONotifier, ArchethicOracleUCO>#4aa30)
/// [2] = AutoDisposeProvider (apiServiceProvider:AutoDisposeProvider<ApiService>#e4552)
/// ```
///
/// ## Filter and READ providers
///
/// In debug console :
///
/// ### Command :
/// ```dart
/// aedappfm.ProvidersTracker().byName('oracle').read
/// ```
///
/// ### Result :
/// ```dart
/// Set
/// [0] = AutoDisposeProvider (oracleServiceProvider:AutoDisposeProvider<OracleService>#2d1c8)
/// [1] = AutoDisposeAsyncNotifierProviderImpl (_archethicOracleUCONotifierProvider:AutoDisposeAsyncNotifierProviderImpl<_ArchethicOracleUCONotifier, ArchethicOracleUCO>#4aa30)
/// ```

/// ## Filter and WATCH providers
///
/// In debug console :
///
/// ### Command :
/// ```dart
/// // watch returns a stream. Here we just log the number of providers whose name matches 'oracle'
/// aedappfm.ProvidersTracker().byName('oracle').watch.forEach((providers) => print('>>> Oracle : ${providers.length}'))
/// ```
///
/// ### Result :
///
/// Each time the alive providers matching 'oracle' changes, we have a log like this :
///
/// ```dart
/// >>> Oracle : 2
/// ```
class ProvidersTracker extends ProviderObserver {
  factory ProvidersTracker() {
    return _instance ??= ProvidersTracker._();
  }
  ProvidersTracker._();

  static ProvidersTracker? _instance;

  final ValueNotifier<Set<ProviderBase<Object?>>> _aliveProviders =
      ValueNotifier({});

  void _addAliveProvider(final ProviderBase<Object?> provider) {
    _aliveProviders.value = {..._aliveProviders.value, provider};
  }

  void _removeAliveProvider(final ProviderBase<Object?> provider) {
    _aliveProviders.value =
        _aliveProviders.value
            .where((final aliveProvider) => aliveProvider != provider)
            .toSet();
  }

  @override
  void didAddProvider(
    final ProviderBase<Object?> provider,
    final Object? value,
    final ProviderContainer container,
  ) {
    _addAliveProvider(provider);
  }

  @override
  void didDisposeProvider(
    final ProviderBase provider,
    final ProviderContainer container,
  ) {
    _removeAliveProvider(provider);
  }

  /// Shows all providers currently alive
  Set<ProviderBase<Object?>> get aliveProviders => _aliveProviders.value;

  /// Shows the provider with matching [hashCode]
  ProviderBase<Object?>? provider(final int hashCode) =>
      _aliveProviders.value
          .where((final element) => element.hashCode == hashCode)
          .firstOrNull;

  /// Creates a [ProvidersTrackerMatcher].
  ProvidersTrackerMatcher match(final ProviderMatcher matcher) =>
      ProvidersTrackerMatcher(tracker: this, matcher: matcher);

  /// Creates a [ProvidersTrackerMatcher] which
  /// filters providers by name/classname.
  ///
  /// For more details about the matchin rules, check [NameProviderMatcher].
  ProvidersTrackerMatcher byName(final String name) =>
      match(ProviderMatcher.name(name));
}

/// Provides [read] and [watch] methods to monitor
/// currently alive providers filtered with [matcher].
class ProvidersTrackerMatcher {
  ProvidersTrackerMatcher({required this.tracker, required this.matcher});

  final ProviderMatcher matcher;
  final ProvidersTracker tracker;

  /// Shows all providers currently alive, filtered according to the [matcher].
  Set<ProviderBase<Object?>> get read =>
      tracker._aliveProviders.value.match(matcher);

  /// Creates a [Stream] watching all providers currently alive, filtered according to the [matcher].
  Stream<Set<ProviderBase<Object?>>> get watch {
    Set<ProviderBase<Object?>>? previousValue;
    late final StreamController<Set<ProviderBase<Object?>>> controller;

    void processChange() {
      final newValue = tracker._aliveProviders.value.match(matcher);
      if (newValue == previousValue) {
        return;
      }

      previousValue = newValue;
      controller.add(newValue);
    }

    void listen() {
      processChange();
      tracker._aliveProviders.addListener(processChange);
    }

    void close() {
      tracker._aliveProviders.removeListener(processChange);
      unawaited(controller.close());
    }

    controller = StreamController<Set<ProviderBase<Object?>>>(
      onListen: listen,
      onPause: close,
      onResume: listen,
      onCancel: close,
    );

    return controller.stream;
  }
}

abstract class ProviderMatcher {
  /// [name] matcher is case insensitive. Name matching is quite permissive.
  ///
  /// `ProvidersTracker().aliveProviders('oracle')` would match the following providers :
  ///
  ///  - AutoDisposeProvider [(oracleServiceProvider:AutoDisposeProvider<OracleService>#2d1c8)]
  ///  - AutoDisposeAsyncNotifierProviderImpl (_archethicOracleUCONotifierProvider:AutoDisposeAsyncNotifierProviderImpl<_ArchethicOracleUCONotifier, ArchethicOracleUCO>#4aa30)
  factory ProviderMatcher.name(final String name) => NameProviderMatcher(name);

  bool matches(final ProviderBase<Object?> provider) =>
      throw UnimplementedError();
}

class NameProviderMatcher implements ProviderMatcher {
  const NameProviderMatcher(this.name);

  final String name;

  @override
  bool matches(final ProviderBase<Object?> provider) =>
      (provider.name ?? '').toLowerCase().contains(name.toLowerCase()) ||
      provider.runtimeType.toString().toLowerCase().contains(
        name.toLowerCase(),
      );
}

extension SetProviderMatchExt on Set<ProviderBase<Object?>> {
  Set<ProviderBase<Object?>> match(final ProviderMatcher matcher) =>
      where(matcher.matches).toSet();
}
