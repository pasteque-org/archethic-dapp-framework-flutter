import 'dart:async';

import 'package:archethic_dapp_framework_flutter/src/domain/models/failures.dart';

extension _DurationTimeoutFuture on Duration {
  Future<void> get toTimeoutFuture => Future.delayed(this, () {
    throw const Timeout();
  });
}

class PeriodicFuture {
  static Future<T> periodic<T>(
    final FutureOr<T> Function() action, {
    required final Duration sleepDuration,
    required final bool Function(T value) until,
    final Duration? timeout,
  }) async {
    final timeoutFuture = timeout?.toTimeoutFuture;

    late T result;
    await Future.doWhile(() async {
      result = await action();
      if (until(result)) {
        return false;
      }
      await Future.any([
        Future.delayed(sleepDuration),
        if (timeoutFuture != null) timeoutFuture,
      ]);
      return true;
    });
    return result;
  }
}
