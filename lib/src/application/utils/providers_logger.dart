import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:logging/logging.dart';

class ProvidersLogger extends ProviderObserver {
  @override
  void didAddProvider(
    final ProviderBase<Object?> provider,
    final Object? value,
    final ProviderContainer container,
  ) {
    if (provider.name != null) {
      Logger(
        '${DateFormat('yyyy-MM-dd HH:mm:ss.SSS').format(DateTime.now())} ${provider.name!}${provider.argument != null ? ':${provider.argument}' : ''}',
      ).info('didAddProvider($value)');
    }
  }

  @override
  void didUpdateProvider(
    final ProviderBase<Object?> provider,
    final Object? previousValue,
    final Object? newValue,
    final ProviderContainer container,
  ) {
    if (provider.name != null) {
      Logger(provider.name!).info(
        '${DateFormat('yyyy-MM-dd HH:mm:ss.SSS').format(DateTime.now())} didUpdateProvider($newValue)',
      );
    }
  }

  @override
  void providerDidFail(
    final ProviderBase<Object?> provider,
    final Object error,
    final StackTrace stackTrace,
    final ProviderContainer container,
  ) {
    if (provider.name != null) {
      Logger(provider.name!).info(
        '${DateFormat('yyyy-MM-dd HH:mm:ss.SSS').format(DateTime.now())} providerDidFail($error)',
      );
    }
  }

  @override
  void didDisposeProvider(
    final ProviderBase provider,
    final ProviderContainer container,
  ) {
    if (provider.name != null) {
      Logger(provider.name!).info(
        '${DateFormat('yyyy-MM-dd HH:mm:ss.SSS').format(DateTime.now())} didDisposeProvider',
      );
    }
  }
}
