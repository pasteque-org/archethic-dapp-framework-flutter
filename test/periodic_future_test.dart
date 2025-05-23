import 'dart:async';

import 'package:archethic_dapp_framework_flutter/archethic_dapp_framework_flutter.dart'
    as aedappfm;
import 'package:test/test.dart';

const kTimerAccuracy = Duration(milliseconds: 500);

void main() {
  test('Should complete when `until` verified', () async {
    var i = 0;
    await aedappfm.PeriodicFuture.periodic<int>(
      () {
        return i++;
      },
      sleepDuration: const Duration(milliseconds: 100),
      until: (final value) => value >= 4,
    );

    expect(i, 5);
  });

  test('Should rethrow when `action` fails', () async {
    expect(
      await aedappfm.PeriodicFuture.periodic<int>(
        () {
          throw Exception('broken');
        },
        sleepDuration: const Duration(milliseconds: 100),
        until: (final value) => true,
      ),
      throwsA(isA<Exception>()),
    );
  });

  test('Should wait expected duration between `action` executions', () async {
    const durationBetweenActions = Duration(milliseconds: 10);
    const iterations = 30;

    final stopWatch = Stopwatch()..start();
    var i = 0;
    await aedappfm.PeriodicFuture.periodic<int>(
      () {
        return i++;
      },
      sleepDuration: durationBetweenActions,
      until: (final value) => value >= iterations,
    );
    stopWatch.stop();

    final actualAverageSleepDuration =
        stopWatch.elapsedMilliseconds / iterations;
    final expectedAverageSleepDuration = durationBetweenActions.inMilliseconds;

    final sleepDurationGap =
        (actualAverageSleepDuration - expectedAverageSleepDuration).abs();
    expect(sleepDurationGap, lessThan(kTimerAccuracy.inMilliseconds));
  });

  test('Should stop when timeout reached', () async {
    const timeout = Duration(seconds: 1);

    final stopWatch = Stopwatch();

    Object? exception;
    var runCount = 0;
    try {
      stopWatch.start();
      await aedappfm.PeriodicFuture.periodic(
        () {
          return runCount++;
        },
        sleepDuration: const Duration(milliseconds: 100),
        until: (final value) => false,
        timeout: timeout,
      );
    } on Exception catch (e) {
      exception = e;
    }
    stopWatch.stop();

    expect(
      exception,
      isA<aedappfm.Timeout>(),
      reason: 'Should throw a Timeout exception when timeout reached',
    );

    final elapsedTime = stopWatch.elapsedMilliseconds;
    final expectedElapsedTime = timeout.inMilliseconds;
    final elapsedTimeGap = (elapsedTime - expectedElapsedTime).abs();
    expect(
      elapsedTimeGap,
      lessThan(kTimerAccuracy.inMilliseconds),
      reason: 'Timeout duration not respected.',
    );

    final runCountSnapshot = runCount;
    await Future.delayed(const Duration(milliseconds: 100));
    final runsAfterTimeoutCount = runCount - runCountSnapshot;
    expect(
      runsAfterTimeoutCount,
      lessThanOrEqualTo(1),
      reason: '`action` should not be run after timeout.',
    );
  });
}
