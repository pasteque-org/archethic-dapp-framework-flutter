import 'dart:async';
import 'dart:convert';

import 'package:archethic_dapp_framework_flutter/src/util/logger_output.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';

/// Logger which sends logs to grafana.
///
/// Grafana logs can be disabled using [remoteLogsEnabled] flag.
/// Logs are sent to the server in batches of [batchSize] every [sendInterval].
///
/// Logs are sent to the standard output. Visible log level can be set using [LoggerOutput.setup].
class LogManager {
  LogManager({
    required this.url,
    this.sendInterval = const Duration(seconds: 60),
    this.batchSize = 1,
    this.remoteLogsEnabled = true,
  }) {
    if (!kDebugMode) {
      // ignore: discarded_futures
      _timer = Timer.periodic(sendInterval, (_) => _sendLogs());
    }
  }
  final Duration sendInterval;
  final int batchSize;
  bool remoteLogsEnabled;
  List<Map<String, dynamic>> _logQueue = [];
  Timer? _timer;
  final String url;

  void log(
    final String message, {
    final String? name,
    final Object? error,
    final StackTrace? stackTrace,
    final LogLevel level = LogLevel.info,
  }) {
    final logger = Logger(name ?? 'ArchethicDApp');

    if (message.isEmpty) {
      return;
    }
    logger.log(level.toLogger, message, error, stackTrace);
    if (remoteLogsEnabled && !kDebugMode) {
      final timeStamp = DateTime.now().toIso8601String();
      final logEntry = <String, dynamic>{
        'timestamp': timeStamp,
        'message': message,
        'level': level.toString(),
        'stacktrace': stackTrace.toString(),
        'name': name ?? '',
      };
      _logQueue.add(logEntry);
      if (_logQueue.length >= batchSize) {
        // ignore: discarded_futures
        _sendLogs();
      }
    }
  }

  Future<void> _sendLogs() async {
    if (_logQueue.isEmpty) {
      return;
    }

    final logger = Logger('ArchethicDAppLogger');
    try {
      final response = await http.post(
        Uri.parse(url),
        body: json.encode(_logQueue),
      );

      if (response.statusCode == 200) {
        _logQueue = [];
      } else {
        logger.warning(
          'Failed to send logs to server, response status code: ${response.statusCode}',
        );
      }
    } on Exception catch (e) {
      logger.warning('Error sending logs to server: $e');
    }
  }

  void dispose() {
    _timer?.cancel();
  }
}

enum LogLevel { debug, info, warning, error }

extension _LogLevelToLoggerExt on LogLevel {
  Level get toLogger {
    switch (this) {
      case LogLevel.debug:
        return Level.FINE;
      case LogLevel.info:
        return Level.INFO;
      case LogLevel.warning:
        return Level.WARNING;
      case LogLevel.error:
        return Level.SEVERE;
    }
  }
}
