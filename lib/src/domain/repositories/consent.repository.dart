abstract class ConsentRepository {
  Future<void> addAddress(final String v);

  Future<DateTime?> getConsentTime(final String v);
}
