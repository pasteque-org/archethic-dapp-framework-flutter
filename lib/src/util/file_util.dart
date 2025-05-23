import 'dart:convert';
import 'dart:typed_data';

import 'package:archive/archive.dart';
import 'package:archive/archive_io.dart';

mixin FileMixin {
  String zipAndEncodeContent(final Uint8List rawData) {
    final compressedData = const GZipEncoder().encode(rawData);
    return base64Url.encode(compressedData);
  }

  Uint8List dezipAndDecodeContent(final String data) {
    final compressedData = base64Url.decode(data);
    return Uint8List.fromList(const GZipDecoder().decodeBytes(compressedData));
  }
}

class ZipAndEncodeHelper with FileMixin {}
