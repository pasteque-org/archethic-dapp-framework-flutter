import 'dart:async';

class CanceledTask implements Exception {
  const CanceledTask();
}

class CancelableTask<T> {
  CancelableTask({required this.task});

  Completer<T>? _completer;
  var _canceled = false;
  final Future<T> Function() task;

  Future<T> run() {
    if (_canceled) {
      return Future.error(const CanceledTask());
    }

    if (_completer != null) {
      return _completer!.future;
    }

    _completer = Completer();
    unawaited(
      task().then((final result) {
        if (_canceled) {
          _completer!.completeError(const CanceledTask());
          return;
        }
        _completer!.complete(result);
      }),
    );

    return _completer!.future;
  }

  Future<T> schedule(final Duration delay) => Future.delayed(delay, run);

  void cancel() {
    _canceled = true;
  }
}
