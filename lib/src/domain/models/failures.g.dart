// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failures.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoggedOut _$LoggedOutFromJson(Map<String, dynamic> json) =>
    LoggedOut($type: json['runtimeType'] as String?);

Map<String, dynamic> _$LoggedOutToJson(LoggedOut instance) => <String, dynamic>{
  'runtimeType': instance.$type,
};

NetworkFailure _$NetworkFailureFromJson(Map<String, dynamic> json) =>
    NetworkFailure($type: json['runtimeType'] as String?);

Map<String, dynamic> _$NetworkFailureToJson(NetworkFailure instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

QuotaExceededFailure _$QuotaExceededFailureFromJson(
  Map<String, dynamic> json,
) => QuotaExceededFailure(
  cooldownEndDate:
      json['cooldownEndDate'] == null
          ? null
          : DateTime.parse(json['cooldownEndDate'] as String),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$QuotaExceededFailureToJson(
  QuotaExceededFailure instance,
) => <String, dynamic>{
  'cooldownEndDate': instance.cooldownEndDate?.toIso8601String(),
  'runtimeType': instance.$type,
};

ServiceNotFound _$ServiceNotFoundFromJson(Map<String, dynamic> json) =>
    ServiceNotFound($type: json['runtimeType'] as String?);

Map<String, dynamic> _$ServiceNotFoundToJson(ServiceNotFound instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

ServiceAlreadyExists _$ServiceAlreadyExistsFromJson(
  Map<String, dynamic> json,
) => ServiceAlreadyExists($type: json['runtimeType'] as String?);

Map<String, dynamic> _$ServiceAlreadyExistsToJson(
  ServiceAlreadyExists instance,
) => <String, dynamic>{'runtimeType': instance.$type};

PoolAlreadyExists _$PoolAlreadyExistsFromJson(Map<String, dynamic> json) =>
    PoolAlreadyExists($type: json['runtimeType'] as String?);

Map<String, dynamic> _$PoolAlreadyExistsToJson(PoolAlreadyExists instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

LPTokenAmountExceedBalance _$LPTokenAmountExceedBalanceFromJson(
  Map<String, dynamic> json,
) => LPTokenAmountExceedBalance($type: json['runtimeType'] as String?);

Map<String, dynamic> _$LPTokenAmountExceedBalanceToJson(
  LPTokenAmountExceedBalance instance,
) => <String, dynamic>{'runtimeType': instance.$type};

PoolNotExists _$PoolNotExistsFromJson(Map<String, dynamic> json) =>
    PoolNotExists($type: json['runtimeType'] as String?);

Map<String, dynamic> _$PoolNotExistsToJson(PoolNotExists instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

InsufficientFunds _$InsufficientFundsFromJson(Map<String, dynamic> json) =>
    InsufficientFunds($type: json['runtimeType'] as String?);

Map<String, dynamic> _$InsufficientFundsToJson(InsufficientFunds instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

Unauthorized _$UnauthorizedFromJson(Map<String, dynamic> json) =>
    Unauthorized($type: json['runtimeType'] as String?);

Map<String, dynamic> _$UnauthorizedToJson(Unauthorized instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

InvalidValue _$InvalidValueFromJson(Map<String, dynamic> json) =>
    InvalidValue($type: json['runtimeType'] as String?);

Map<String, dynamic> _$InvalidValueToJson(InvalidValue instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

HTLCWithoutFunds _$HTLCWithoutFundsFromJson(Map<String, dynamic> json) =>
    HTLCWithoutFunds($type: json['runtimeType'] as String?);

Map<String, dynamic> _$HTLCWithoutFundsToJson(HTLCWithoutFunds instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

NotHTLC _$NotHTLCFromJson(Map<String, dynamic> json) =>
    NotHTLC($type: json['runtimeType'] as String?);

Map<String, dynamic> _$NotHTLCToJson(NotHTLC instance) => <String, dynamic>{
  'runtimeType': instance.$type,
};

FaucetUCOError _$FaucetUCOErrorFromJson(Map<String, dynamic> json) =>
    FaucetUCOError($type: json['runtimeType'] as String?);

Map<String, dynamic> _$FaucetUCOErrorToJson(FaucetUCOError instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

FaucetUCUserRejected _$FaucetUCUserRejectedFromJson(
  Map<String, dynamic> json,
) => FaucetUCUserRejected($type: json['runtimeType'] as String?);

Map<String, dynamic> _$FaucetUCUserRejectedToJson(
  FaucetUCUserRejected instance,
) => <String, dynamic>{'runtimeType': instance.$type};

WrongNetwork _$WrongNetworkFromJson(Map<String, dynamic> json) => WrongNetwork(
  json['cause'] as String,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$WrongNetworkToJson(WrongNetwork instance) =>
    <String, dynamic>{'cause': instance.cause, 'runtimeType': instance.$type};

InsufficientPoolFunds _$InsufficientPoolFundsFromJson(
  Map<String, dynamic> json,
) => InsufficientPoolFunds($type: json['runtimeType'] as String?);

Map<String, dynamic> _$InsufficientPoolFundsToJson(
  InsufficientPoolFunds instance,
) => <String, dynamic>{'runtimeType': instance.$type};

IncompatibleBrowser _$IncompatibleBrowserFromJson(Map<String, dynamic> json) =>
    IncompatibleBrowser($type: json['runtimeType'] as String?);

Map<String, dynamic> _$IncompatibleBrowserToJson(
  IncompatibleBrowser instance,
) => <String, dynamic>{'runtimeType': instance.$type};

ChainSwitchNotSupported _$ChainSwitchNotSupportedFromJson(
  Map<String, dynamic> json,
) => ChainSwitchNotSupported($type: json['runtimeType'] as String?);

Map<String, dynamic> _$ChainSwitchNotSupportedToJson(
  ChainSwitchNotSupported instance,
) => <String, dynamic>{'runtimeType': instance.$type};

ConnectivityEVM _$ConnectivityEVMFromJson(Map<String, dynamic> json) =>
    ConnectivityEVM($type: json['runtimeType'] as String?);

Map<String, dynamic> _$ConnectivityEVMToJson(ConnectivityEVM instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

WalletNotSupportedEVM _$WalletNotSupportedEVMFromJson(
  Map<String, dynamic> json,
) => WalletNotSupportedEVM($type: json['runtimeType'] as String?);

Map<String, dynamic> _$WalletNotSupportedEVMToJson(
  WalletNotSupportedEVM instance,
) => <String, dynamic>{'runtimeType': instance.$type};

NoWalletSupportedEVM _$NoWalletSupportedEVMFromJson(
  Map<String, dynamic> json,
) => NoWalletSupportedEVM($type: json['runtimeType'] as String?);

Map<String, dynamic> _$NoWalletSupportedEVMToJson(
  NoWalletSupportedEVM instance,
) => <String, dynamic>{'runtimeType': instance.$type};

ParamEVMChain _$ParamEVMChainFromJson(Map<String, dynamic> json) =>
    ParamEVMChain($type: json['runtimeType'] as String?);

Map<String, dynamic> _$ParamEVMChainToJson(ParamEVMChain instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

UserRejected _$UserRejectedFromJson(Map<String, dynamic> json) =>
    UserRejected($type: json['runtimeType'] as String?);

Map<String, dynamic> _$UserRejectedToJson(UserRejected instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

ConnectivityArchethic _$ConnectivityArchethicFromJson(
  Map<String, dynamic> json,
) => ConnectivityArchethic($type: json['runtimeType'] as String?);

Map<String, dynamic> _$ConnectivityArchethicToJson(
  ConnectivityArchethic instance,
) => <String, dynamic>{'runtimeType': instance.$type};

Timeout _$TimeoutFromJson(Map<String, dynamic> json) =>
    Timeout($type: json['runtimeType'] as String?);

Map<String, dynamic> _$TimeoutToJson(Timeout instance) => <String, dynamic>{
  'runtimeType': instance.$type,
};

RPCErrorEVM _$RPCErrorEVMFromJson(Map<String, dynamic> json) => RPCErrorEVM(
  json['cause'] as String?,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$RPCErrorEVMToJson(RPCErrorEVM instance) =>
    <String, dynamic>{'cause': instance.cause, 'runtimeType': instance.$type};

OtherFailure _$OtherFailureFromJson(Map<String, dynamic> json) => OtherFailure(
  cause: json['cause'] as String?,
  stack: json['stack'] as String?,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$OtherFailureToJson(OtherFailure instance) =>
    <String, dynamic>{
      'cause': instance.cause,
      'stack': instance.stack,
      'runtimeType': instance.$type,
    };
