// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
Failure _$FailureFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'loggedOut':
          return LoggedOut.fromJson(
            json
          );
                case 'network':
          return NetworkFailure.fromJson(
            json
          );
                case 'quotaExceeded':
          return QuotaExceededFailure.fromJson(
            json
          );
                case 'serviceNotFound':
          return ServiceNotFound.fromJson(
            json
          );
                case 'serviceAlreadyExists':
          return ServiceAlreadyExists.fromJson(
            json
          );
                case 'poolAlreadyExists':
          return PoolAlreadyExists.fromJson(
            json
          );
                case 'lpTokenAmountExceedBalance':
          return LPTokenAmountExceedBalance.fromJson(
            json
          );
                case 'poolNotExists':
          return PoolNotExists.fromJson(
            json
          );
                case 'insufficientFunds':
          return InsufficientFunds.fromJson(
            json
          );
                case 'unauthorized':
          return Unauthorized.fromJson(
            json
          );
                case 'invalidValue':
          return InvalidValue.fromJson(
            json
          );
                case 'htlcWithoutFunds':
          return HTLCWithoutFunds.fromJson(
            json
          );
                case 'notHTLC':
          return NotHTLC.fromJson(
            json
          );
                case 'faucetUCOError':
          return FaucetUCOError.fromJson(
            json
          );
                case 'faucetUCOUserRejected':
          return FaucetUCUserRejected.fromJson(
            json
          );
                case 'wrongNetwork':
          return WrongNetwork.fromJson(
            json
          );
                case 'insufficientPoolFunds':
          return InsufficientPoolFunds.fromJson(
            json
          );
                case 'incompatibleBrowser':
          return IncompatibleBrowser.fromJson(
            json
          );
                case 'chainSwitchNotSupported':
          return ChainSwitchNotSupported.fromJson(
            json
          );
                case 'connectivityEVM':
          return ConnectivityEVM.fromJson(
            json
          );
                case 'walletNotSupportedEVM':
          return WalletNotSupportedEVM.fromJson(
            json
          );
                case 'noWalletSupportedEVM':
          return NoWalletSupportedEVM.fromJson(
            json
          );
                case 'paramEVMChain':
          return ParamEVMChain.fromJson(
            json
          );
                case 'userRejected':
          return UserRejected.fromJson(
            json
          );
                case 'connectivityArchethic':
          return ConnectivityArchethic.fromJson(
            json
          );
                case 'timeout':
          return Timeout.fromJson(
            json
          );
                case 'rpcErrorEVM':
          return RPCErrorEVM.fromJson(
            json
          );
                case 'other':
          return OtherFailure.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'Failure',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$Failure {



  /// Serializes this Failure to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure()';
}


}

/// @nodoc
class $FailureCopyWith<$Res>  {
$FailureCopyWith(Failure _, $Res Function(Failure) __);
}


/// @nodoc
@JsonSerializable()

class LoggedOut extends Failure {
  const LoggedOut({final  String? $type}): $type = $type ?? 'loggedOut',super._();
  factory LoggedOut.fromJson(Map<String, dynamic> json) => _$LoggedOutFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$LoggedOutToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoggedOut);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.loggedOut()';
}


}




/// @nodoc
@JsonSerializable()

class NetworkFailure extends Failure {
  const NetworkFailure({final  String? $type}): $type = $type ?? 'network',super._();
  factory NetworkFailure.fromJson(Map<String, dynamic> json) => _$NetworkFailureFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$NetworkFailureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkFailure);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.network()';
}


}




/// @nodoc
@JsonSerializable()

class QuotaExceededFailure extends Failure {
  const QuotaExceededFailure({this.cooldownEndDate, final  String? $type}): $type = $type ?? 'quotaExceeded',super._();
  factory QuotaExceededFailure.fromJson(Map<String, dynamic> json) => _$QuotaExceededFailureFromJson(json);

 final  DateTime? cooldownEndDate;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuotaExceededFailureCopyWith<QuotaExceededFailure> get copyWith => _$QuotaExceededFailureCopyWithImpl<QuotaExceededFailure>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuotaExceededFailureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuotaExceededFailure&&(identical(other.cooldownEndDate, cooldownEndDate) || other.cooldownEndDate == cooldownEndDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cooldownEndDate);

@override
String toString() {
  return 'Failure.quotaExceeded(cooldownEndDate: $cooldownEndDate)';
}


}

/// @nodoc
abstract mixin class $QuotaExceededFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $QuotaExceededFailureCopyWith(QuotaExceededFailure value, $Res Function(QuotaExceededFailure) _then) = _$QuotaExceededFailureCopyWithImpl;
@useResult
$Res call({
 DateTime? cooldownEndDate
});




}
/// @nodoc
class _$QuotaExceededFailureCopyWithImpl<$Res>
    implements $QuotaExceededFailureCopyWith<$Res> {
  _$QuotaExceededFailureCopyWithImpl(this._self, this._then);

  final QuotaExceededFailure _self;
  final $Res Function(QuotaExceededFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cooldownEndDate = freezed,}) {
  return _then(QuotaExceededFailure(
cooldownEndDate: freezed == cooldownEndDate ? _self.cooldownEndDate : cooldownEndDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ServiceNotFound extends Failure {
  const ServiceNotFound({final  String? $type}): $type = $type ?? 'serviceNotFound',super._();
  factory ServiceNotFound.fromJson(Map<String, dynamic> json) => _$ServiceNotFoundFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$ServiceNotFoundToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceNotFound);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.serviceNotFound()';
}


}




/// @nodoc
@JsonSerializable()

class ServiceAlreadyExists extends Failure {
  const ServiceAlreadyExists({final  String? $type}): $type = $type ?? 'serviceAlreadyExists',super._();
  factory ServiceAlreadyExists.fromJson(Map<String, dynamic> json) => _$ServiceAlreadyExistsFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$ServiceAlreadyExistsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceAlreadyExists);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.serviceAlreadyExists()';
}


}




/// @nodoc
@JsonSerializable()

class PoolAlreadyExists extends Failure {
  const PoolAlreadyExists({final  String? $type}): $type = $type ?? 'poolAlreadyExists',super._();
  factory PoolAlreadyExists.fromJson(Map<String, dynamic> json) => _$PoolAlreadyExistsFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$PoolAlreadyExistsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PoolAlreadyExists);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.poolAlreadyExists()';
}


}




/// @nodoc
@JsonSerializable()

class LPTokenAmountExceedBalance extends Failure {
  const LPTokenAmountExceedBalance({final  String? $type}): $type = $type ?? 'lpTokenAmountExceedBalance',super._();
  factory LPTokenAmountExceedBalance.fromJson(Map<String, dynamic> json) => _$LPTokenAmountExceedBalanceFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$LPTokenAmountExceedBalanceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LPTokenAmountExceedBalance);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.lpTokenAmountExceedBalance()';
}


}




/// @nodoc
@JsonSerializable()

class PoolNotExists extends Failure {
  const PoolNotExists({final  String? $type}): $type = $type ?? 'poolNotExists',super._();
  factory PoolNotExists.fromJson(Map<String, dynamic> json) => _$PoolNotExistsFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$PoolNotExistsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PoolNotExists);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.poolNotExists()';
}


}




/// @nodoc
@JsonSerializable()

class InsufficientFunds extends Failure {
  const InsufficientFunds({final  String? $type}): $type = $type ?? 'insufficientFunds',super._();
  factory InsufficientFunds.fromJson(Map<String, dynamic> json) => _$InsufficientFundsFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$InsufficientFundsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InsufficientFunds);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.insufficientFunds()';
}


}




/// @nodoc
@JsonSerializable()

class Unauthorized extends Failure {
  const Unauthorized({final  String? $type}): $type = $type ?? 'unauthorized',super._();
  factory Unauthorized.fromJson(Map<String, dynamic> json) => _$UnauthorizedFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$UnauthorizedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unauthorized);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.unauthorized()';
}


}




/// @nodoc
@JsonSerializable()

class InvalidValue extends Failure {
  const InvalidValue({final  String? $type}): $type = $type ?? 'invalidValue',super._();
  factory InvalidValue.fromJson(Map<String, dynamic> json) => _$InvalidValueFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$InvalidValueToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidValue);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.invalidValue()';
}


}




/// @nodoc
@JsonSerializable()

class HTLCWithoutFunds extends Failure {
  const HTLCWithoutFunds({final  String? $type}): $type = $type ?? 'htlcWithoutFunds',super._();
  factory HTLCWithoutFunds.fromJson(Map<String, dynamic> json) => _$HTLCWithoutFundsFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$HTLCWithoutFundsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HTLCWithoutFunds);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.htlcWithoutFunds()';
}


}




/// @nodoc
@JsonSerializable()

class NotHTLC extends Failure {
  const NotHTLC({final  String? $type}): $type = $type ?? 'notHTLC',super._();
  factory NotHTLC.fromJson(Map<String, dynamic> json) => _$NotHTLCFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$NotHTLCToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotHTLC);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.notHTLC()';
}


}




/// @nodoc
@JsonSerializable()

class FaucetUCOError extends Failure {
  const FaucetUCOError({final  String? $type}): $type = $type ?? 'faucetUCOError',super._();
  factory FaucetUCOError.fromJson(Map<String, dynamic> json) => _$FaucetUCOErrorFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$FaucetUCOErrorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FaucetUCOError);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.faucetUCOError()';
}


}




/// @nodoc
@JsonSerializable()

class FaucetUCUserRejected extends Failure {
  const FaucetUCUserRejected({final  String? $type}): $type = $type ?? 'faucetUCOUserRejected',super._();
  factory FaucetUCUserRejected.fromJson(Map<String, dynamic> json) => _$FaucetUCUserRejectedFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$FaucetUCUserRejectedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FaucetUCUserRejected);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.faucetUCOUserRejected()';
}


}




/// @nodoc
@JsonSerializable()

class WrongNetwork extends Failure {
  const WrongNetwork(this.cause, {final  String? $type}): $type = $type ?? 'wrongNetwork',super._();
  factory WrongNetwork.fromJson(Map<String, dynamic> json) => _$WrongNetworkFromJson(json);

 final  String cause;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WrongNetworkCopyWith<WrongNetwork> get copyWith => _$WrongNetworkCopyWithImpl<WrongNetwork>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WrongNetworkToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WrongNetwork&&(identical(other.cause, cause) || other.cause == cause));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cause);

@override
String toString() {
  return 'Failure.wrongNetwork(cause: $cause)';
}


}

/// @nodoc
abstract mixin class $WrongNetworkCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $WrongNetworkCopyWith(WrongNetwork value, $Res Function(WrongNetwork) _then) = _$WrongNetworkCopyWithImpl;
@useResult
$Res call({
 String cause
});




}
/// @nodoc
class _$WrongNetworkCopyWithImpl<$Res>
    implements $WrongNetworkCopyWith<$Res> {
  _$WrongNetworkCopyWithImpl(this._self, this._then);

  final WrongNetwork _self;
  final $Res Function(WrongNetwork) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cause = null,}) {
  return _then(WrongNetwork(
null == cause ? _self.cause : cause // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class InsufficientPoolFunds extends Failure {
  const InsufficientPoolFunds({final  String? $type}): $type = $type ?? 'insufficientPoolFunds',super._();
  factory InsufficientPoolFunds.fromJson(Map<String, dynamic> json) => _$InsufficientPoolFundsFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$InsufficientPoolFundsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InsufficientPoolFunds);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.insufficientPoolFunds()';
}


}




/// @nodoc
@JsonSerializable()

class IncompatibleBrowser extends Failure {
  const IncompatibleBrowser({final  String? $type}): $type = $type ?? 'incompatibleBrowser',super._();
  factory IncompatibleBrowser.fromJson(Map<String, dynamic> json) => _$IncompatibleBrowserFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$IncompatibleBrowserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IncompatibleBrowser);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.incompatibleBrowser()';
}


}




/// @nodoc
@JsonSerializable()

class ChainSwitchNotSupported extends Failure {
  const ChainSwitchNotSupported({final  String? $type}): $type = $type ?? 'chainSwitchNotSupported',super._();
  factory ChainSwitchNotSupported.fromJson(Map<String, dynamic> json) => _$ChainSwitchNotSupportedFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$ChainSwitchNotSupportedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChainSwitchNotSupported);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.chainSwitchNotSupported()';
}


}




/// @nodoc
@JsonSerializable()

class ConnectivityEVM extends Failure {
  const ConnectivityEVM({final  String? $type}): $type = $type ?? 'connectivityEVM',super._();
  factory ConnectivityEVM.fromJson(Map<String, dynamic> json) => _$ConnectivityEVMFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$ConnectivityEVMToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectivityEVM);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.connectivityEVM()';
}


}




/// @nodoc
@JsonSerializable()

class WalletNotSupportedEVM extends Failure {
  const WalletNotSupportedEVM({final  String? $type}): $type = $type ?? 'walletNotSupportedEVM',super._();
  factory WalletNotSupportedEVM.fromJson(Map<String, dynamic> json) => _$WalletNotSupportedEVMFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$WalletNotSupportedEVMToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletNotSupportedEVM);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.walletNotSupportedEVM()';
}


}




/// @nodoc
@JsonSerializable()

class NoWalletSupportedEVM extends Failure {
  const NoWalletSupportedEVM({final  String? $type}): $type = $type ?? 'noWalletSupportedEVM',super._();
  factory NoWalletSupportedEVM.fromJson(Map<String, dynamic> json) => _$NoWalletSupportedEVMFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$NoWalletSupportedEVMToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoWalletSupportedEVM);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.noWalletSupportedEVM()';
}


}




/// @nodoc
@JsonSerializable()

class ParamEVMChain extends Failure {
  const ParamEVMChain({final  String? $type}): $type = $type ?? 'paramEVMChain',super._();
  factory ParamEVMChain.fromJson(Map<String, dynamic> json) => _$ParamEVMChainFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$ParamEVMChainToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParamEVMChain);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.paramEVMChain()';
}


}




/// @nodoc
@JsonSerializable()

class UserRejected extends Failure {
  const UserRejected({final  String? $type}): $type = $type ?? 'userRejected',super._();
  factory UserRejected.fromJson(Map<String, dynamic> json) => _$UserRejectedFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$UserRejectedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserRejected);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.userRejected()';
}


}




/// @nodoc
@JsonSerializable()

class ConnectivityArchethic extends Failure {
  const ConnectivityArchethic({final  String? $type}): $type = $type ?? 'connectivityArchethic',super._();
  factory ConnectivityArchethic.fromJson(Map<String, dynamic> json) => _$ConnectivityArchethicFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$ConnectivityArchethicToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectivityArchethic);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.connectivityArchethic()';
}


}




/// @nodoc
@JsonSerializable()

class Timeout extends Failure {
  const Timeout({final  String? $type}): $type = $type ?? 'timeout',super._();
  factory Timeout.fromJson(Map<String, dynamic> json) => _$TimeoutFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$TimeoutToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Timeout);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Failure.timeout()';
}


}




/// @nodoc
@JsonSerializable()

class RPCErrorEVM extends Failure {
  const RPCErrorEVM(this.cause, {final  String? $type}): $type = $type ?? 'rpcErrorEVM',super._();
  factory RPCErrorEVM.fromJson(Map<String, dynamic> json) => _$RPCErrorEVMFromJson(json);

 final  String? cause;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RPCErrorEVMCopyWith<RPCErrorEVM> get copyWith => _$RPCErrorEVMCopyWithImpl<RPCErrorEVM>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RPCErrorEVMToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RPCErrorEVM&&(identical(other.cause, cause) || other.cause == cause));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cause);

@override
String toString() {
  return 'Failure.rpcErrorEVM(cause: $cause)';
}


}

/// @nodoc
abstract mixin class $RPCErrorEVMCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $RPCErrorEVMCopyWith(RPCErrorEVM value, $Res Function(RPCErrorEVM) _then) = _$RPCErrorEVMCopyWithImpl;
@useResult
$Res call({
 String? cause
});




}
/// @nodoc
class _$RPCErrorEVMCopyWithImpl<$Res>
    implements $RPCErrorEVMCopyWith<$Res> {
  _$RPCErrorEVMCopyWithImpl(this._self, this._then);

  final RPCErrorEVM _self;
  final $Res Function(RPCErrorEVM) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cause = freezed,}) {
  return _then(RPCErrorEVM(
freezed == cause ? _self.cause : cause // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class OtherFailure extends Failure {
  const OtherFailure({this.cause, this.stack, final  String? $type}): $type = $type ?? 'other',super._();
  factory OtherFailure.fromJson(Map<String, dynamic> json) => _$OtherFailureFromJson(json);

 final  String? cause;
 final  String? stack;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtherFailureCopyWith<OtherFailure> get copyWith => _$OtherFailureCopyWithImpl<OtherFailure>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OtherFailureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtherFailure&&(identical(other.cause, cause) || other.cause == cause)&&(identical(other.stack, stack) || other.stack == stack));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cause,stack);

@override
String toString() {
  return 'Failure.other(cause: $cause, stack: $stack)';
}


}

/// @nodoc
abstract mixin class $OtherFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $OtherFailureCopyWith(OtherFailure value, $Res Function(OtherFailure) _then) = _$OtherFailureCopyWithImpl;
@useResult
$Res call({
 String? cause, String? stack
});




}
/// @nodoc
class _$OtherFailureCopyWithImpl<$Res>
    implements $OtherFailureCopyWith<$Res> {
  _$OtherFailureCopyWithImpl(this._self, this._then);

  final OtherFailure _self;
  final $Res Function(OtherFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cause = freezed,Object? stack = freezed,}) {
  return _then(OtherFailure(
cause: freezed == cause ? _self.cause : cause // ignore: cast_nullable_to_non_nullable
as String?,stack: freezed == stack ? _self.stack : stack // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
