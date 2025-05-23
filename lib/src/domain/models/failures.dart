import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';
part 'failures.g.dart';

/// A JSON converter for the [Failure] class.
///
/// This converter serializes and deserializes instances of [Failure] to and
/// from JSON format.
class FailureJsonConverter
    extends JsonConverter<Failure, Map<String, dynamic>> {
  /// Creates a [FailureJsonConverter].
  const FailureJsonConverter();

  @override
  Failure fromJson(final Map<String, dynamic> json) {
    return Failure.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(final Failure object) => object.toJson();
}

/// Represents various types of failures that can occur in the application.
///
/// The [Failure] class models different error scenarios, each represented
/// by a specific subclass. This makes error handling more robust and easier
/// to manage. The class implements [Exception] to integrate with Dart's
/// exception-handling mechanism.
@freezed
sealed class Failure with _$Failure implements Exception {
  const Failure._();

  /// A failure that occurs when the user is logged out.
  const factory Failure.loggedOut() = LoggedOut;

  /// A failure that occurs due to network connectivity issues.
  const factory Failure.network() = NetworkFailure;

  /// A failure that occurs when a quota is exceeded.
  ///
  /// [cooldownEndDate] specifies the time when the quota will reset.
  const factory Failure.quotaExceeded({final DateTime? cooldownEndDate}) =
      QuotaExceededFailure;

  /// A failure that occurs when a requested service is not found.
  const factory Failure.serviceNotFound() = ServiceNotFound;

  /// A failure that occurs when a service already exists.
  const factory Failure.serviceAlreadyExists() = ServiceAlreadyExists;

  /// A failure that occurs when a pool already exists.
  const factory Failure.poolAlreadyExists() = PoolAlreadyExists;

  /// A failure that occurs when an LP token amount exceeds the balance.
  const factory Failure.lpTokenAmountExceedBalance() =
      LPTokenAmountExceedBalance;

  /// A failure that occurs when a pool does not exist.
  const factory Failure.poolNotExists() = PoolNotExists;

  /// A failure that occurs due to insufficient funds.
  const factory Failure.insufficientFunds() = InsufficientFunds;

  /// A failure that occurs when an action is unauthorized.
  const factory Failure.unauthorized() = Unauthorized;

  /// A failure that occurs due to an invalid value.
  const factory Failure.invalidValue() = InvalidValue;

  /// A failure that occurs when an HTLC operation is attempted without funds.
  const factory Failure.htlcWithoutFunds() = HTLCWithoutFunds;

  /// A failure that occurs when the expected HTLC contract is not present.
  const factory Failure.notHTLC() = NotHTLC;

  /// A failure specific to UCO faucet errors.
  const factory Failure.faucetUCOError() = FaucetUCOError;

  /// A failure that occurs when a UCO faucet action is rejected by the user.
  const factory Failure.faucetUCOUserRejected() = FaucetUCUserRejected;

  /// A failure that occurs due to a mismatch in the network.
  ///
  /// [cause] describes the reason for the mismatch.
  const factory Failure.wrongNetwork(final String cause) = WrongNetwork;

  /// A failure that occurs due to insufficient pool funds.
  const factory Failure.insufficientPoolFunds() = InsufficientPoolFunds;

  /// A failure that occurs when the browser is incompatible.
  const factory Failure.incompatibleBrowser() = IncompatibleBrowser;

  /// A failure that occurs when chain switching is not supported.
  const factory Failure.chainSwitchNotSupported() = ChainSwitchNotSupported;

  /// A failure that occurs due to EVM connectivity issues.
  const factory Failure.connectivityEVM() = ConnectivityEVM;

  /// A failure that occurs when the wallet is not supported in EVM.
  const factory Failure.walletNotSupportedEVM() = WalletNotSupportedEVM;

  /// A failure that occurs when no wallet is supported in EVM.
  const factory Failure.noWalletSupportedEVM() = NoWalletSupportedEVM;

  /// A failure that occurs due to an invalid EVM chain parameter.
  const factory Failure.paramEVMChain() = ParamEVMChain;

  /// A failure that occurs when the user rejects an action.
  const factory Failure.userRejected() = UserRejected;

  /// A failure that occurs due to Archethic connectivity issues.
  const factory Failure.connectivityArchethic() = ConnectivityArchethic;

  /// A failure that occurs due to a timeout.
  const factory Failure.timeout() = Timeout;

  /// A failure that occurs due to an RPC error in EVM.
  ///
  /// [cause] specifies the reason for the error.
  const factory Failure.rpcErrorEVM(final String? cause) = RPCErrorEVM;

  /// A generic failure type for other errors.
  ///
  /// [cause] specifies the reason for the failure.
  /// [stack] contains the stack trace for debugging purposes.
  const factory Failure.other({final String? cause, final String? stack}) =
      OtherFailure;

  /// Creates a [Failure] instance from an [error] object.
  ///
  /// If the error is already a [Failure], it is returned as is.
  /// Otherwise, an [OtherFailure] is created.
  factory Failure.fromError(final Object error) {
    if (error is Failure) {
      return error;
    }

    return const Failure.other();
  }

  /// Creates a [Failure] instance from a JSON object.
  factory Failure.fromJson(final Map<String, dynamic> json) =>
      _$FailureFromJson(json);
}
