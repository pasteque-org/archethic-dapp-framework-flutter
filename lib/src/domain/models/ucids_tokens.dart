import 'package:freezed_annotation/freezed_annotation.dart';

part 'ucids_tokens.freezed.dart';
part 'ucids_tokens.g.dart';

/// Represents a collection of UCID mappings for different network environments.
///
/// This class is used to store unique identifiers (UCIDs) for cryptocurrencies
/// across various networks, including Mainnet, Testnet, and Devnet.
///
/// Example:
/// ```dart
/// final ucidsTokens = UcidsTokens(
///   mainnet: {'bitcoin': 1, 'ethereum': 1027},
///   testnet: {'bitcoin': 10001, 'ethereum': 20001},
///   devnet: {'bitcoin': 30001, 'ethereum': 40001},
/// );
/// ```
@freezed
abstract class UcidsTokens with _$UcidsTokens {
  /// Creates a new [UcidsTokens] instance.
  ///
  /// [mainnet], [testnet], and [devnet] are required and represent UCID mappings
  /// for their respective networks.
  const factory UcidsTokens({
    /// A map of cryptocurrency names to their UCIDs on the Mainnet.
    required final Map<String, int> mainnet,

    /// A map of cryptocurrency names to their UCIDs on the Testnet.
    required final Map<String, int> testnet,

    /// A map of cryptocurrency names to their UCIDs on the Devnet.
    required final Map<String, int> devnet,
  }) = _UcidsTokens;

  /// Creates a [UcidsTokens] instance from a JSON object.
  ///
  /// This factory method is used for deserializing JSON data into a
  /// [UcidsTokens] instance.
  factory UcidsTokens.fromJson(final Map<String, dynamic> json) =>
      _$UcidsTokensFromJson(json);
}
