abstract class VerifiedTokensRepositoryInterface {
  Future<List<String>> getVerifiedTokens();

  bool isVerifiedToken(
    final String address,
    final List<String> verifiedTokensList,
  );
}
