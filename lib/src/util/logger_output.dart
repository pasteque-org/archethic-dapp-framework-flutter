// ignore_for_file: avoid_print

import 'dart:developer' as dev;

import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

/// [LoggerOutput] is used to fine tune log level sent to standard output.
class LoggerOutput {
  static void setup({final Level? level}) {
    Logger.root.level = level ?? (kDebugMode ? Level.ALL : Level.SEVERE);

    /// Note : When in debug mode, logs are displayed
    /// in debug console. There is no need to register log listeners.
    if (!kDebugMode) {
      _registerLogListeners();
    }
  }

  static void _registerLogListeners() {
    Logger.root.clearListeners();

    if (kIsWeb) {
      Logger.root.onRecord.listen((final event) {
        print(
          '${event.time.toIso8601String()} [${event.loggerName}] ${event.message}',
        );
        if (event.error != null) {
          print('\t${event.error}');
        }
        if (event.stackTrace != null) {
          print('\t${event.stackTrace}');
        }
      });
    }

    if (!kIsWeb) {
      Logger.root.onRecord.listen((final event) {
        dev.log(
          event.message,
          name: event.loggerName,
          error: event.error,
          stackTrace: event.stackTrace,
          level: event.level.value,
          time: event.time,
          sequenceNumber: event.sequenceNumber,
          zone: event.zone,
        );
      });
    }
  }
}
