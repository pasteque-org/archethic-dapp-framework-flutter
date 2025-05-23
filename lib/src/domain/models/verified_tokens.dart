import 'package:freezed_annotation/freezed_annotation.dart';

part 'verified_tokens.freezed.dart';
part 'verified_tokens.g.dart';

/// Represents a list of verified token identifiers for a specific network.
///
/// This class is used to store a list of tokens that have been verified
/// and are considered trustworthy on a specific network (e.g., Devnet).
///
/// Example:
/// ```dart
/// final verifiedTokens = VerifiedTokens(
///   devnet: ['token1', 'token2', 'token3'],
/// );
/// ```
@freezed
abstract class VerifiedTokens with _$VerifiedTokens {
  /// Creates a new [VerifiedTokens] instance.
  ///
  /// [devnet] is required and contains a list of verified token identifiers
  /// for the Devnet environment.
  const factory VerifiedTokens({
    /// A list of verified token identifiers on the Devnet.
    required final List<String> devnet,
  }) = _VerifiedTokens;

  /// Creates a [VerifiedTokens] instance from a JSON object.
  ///
  /// This factory method is used to deserialize JSON data into a
  /// [VerifiedTokens] instance.
  factory VerifiedTokens.fromJson(final Map<String, dynamic> json) =>
      _$VerifiedTokensFromJson(json);
}
