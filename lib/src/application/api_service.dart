import 'package:archethic_dapp_framework_flutter/src/domain/models/environment.dart';
import 'package:archethic_lib_dart/archethic_lib_dart.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_service.g.dart';

@riverpod
ApiService apiService(final Ref ref, final Environment environment) =>
    ApiService(environment.endpoint);
