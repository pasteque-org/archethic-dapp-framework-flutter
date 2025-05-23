import 'dart:convert';
import 'dart:typed_data';
import 'package:archethic_dapp_framework_flutter/src/util/file_util.dart';

mixin RouterMixin {
  String encodeQueryParameter(final Object parameter) {
    final helper = ZipAndEncodeHelper();
    final parameterJson = jsonEncode(parameter);
    final parameterEncoded = Uri.encodeComponent(parameterJson);
    return helper.zipAndEncodeContent(
      Uint8List.fromList(utf8.encode(parameterEncoded)),
    );
  }

  dynamic decodeQueryParameter(final String encodedParameter) {
    final helper = ZipAndEncodeHelper();
    final parameterEncoded = helper.dezipAndDecodeContent(encodedParameter);
    final parameteDecoded = utf8.decode(parameterEncoded);
    final parameterJson = Uri.decodeComponent(parameteDecoded);
    final parameter = jsonDecode(parameterJson);
    return parameter;
  }
}

class QueryParameterHelper with RouterMixin {}
