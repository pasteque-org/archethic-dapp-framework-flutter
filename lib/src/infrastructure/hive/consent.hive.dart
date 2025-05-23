import 'package:archethic_lib_dart/archethic_lib_dart.dart';
import 'package:hive/hive.dart';

class HiveConsentDatasource {
  HiveConsentDatasource._(this._box);

  static const _consentBox = 'consentBox';
  final Box<dynamic> _box;

  static const hashAddresses = 'archethic_consent_hash_addresses';

  // This doesn't have to be a singleton.
  // We just want to make sure that the box is open, before we start getting/setting objects on it
  static Future<HiveConsentDatasource> getInstance() async {
    final box = await Hive.openBox<dynamic>(_consentBox);
    return HiveConsentDatasource._(box);
  }

  Future<void> addAddress(final String v) async {
    if (getConsentTime(v) != null) {
      return;
    }

    final vHashed = uint8ListToHex(hash(v.toUpperCase()));
    return _box.put(
      hashAddresses,
      {
        ...getAddresses(),
        '$vHashed|${DateTime.now().millisecondsSinceEpoch}',
      }.toList(),
    );
  }

  List<dynamic> getAddresses() {
    final result = _box.get(hashAddresses, defaultValue: <String>[]);
    return result;
  }

  DateTime? getConsentTime(final String v) {
    final vHashed = uint8ListToHex(hash(v.toUpperCase()));
    DateTime? datetime;

    final addresses = getAddresses();
    for (final address in addresses) {
      final parts = address.split('|');
      if (parts[0] == vHashed && int.tryParse(parts[1]) != null) {
        datetime = DateTime.fromMillisecondsSinceEpoch(int.tryParse(parts[1])!);
      }
    }

    return datetime;
  }

  Future<void> clearAll() async {
    await _box.clear();
  }
}
