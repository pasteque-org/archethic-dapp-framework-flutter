# Archethic's flutter framework to create Archethic Dapps
This project provides widgets to facilitate the creation of Archethic DApps

## Pre-requisites

- Flutter 3.29+
- Dart 3.7+

## Arb file management

Please, fill `/lib/src/l10n/intl_en.arb` file to externalize texts. 
Best practice: prefix each key with `aedappfm_` to avoid doublons with DApp projects

### To generate the arb file, you should:
- Generate with Flutter_Gen (command: `flutter gen-l10n`) the `AppLocalizations` and `AppLocalizationsEn` classes in the hidden folder `.dart_tool/flutter_gen/gen_l10n`. (see `/l10n.yaml` conf)
```bash
flutter gen-l10n
```

- Copy generated classes to a public folder `/lib/src/l10n` with the script `./lib/src/l10n/copy_l10n.sh`.
```bash
./lib/src/l10n/copy_l10n.sh
```

### Declare the localizations delegates in your DApp.
Add `aedappfm.AppLocalizations.delegate` in `localizationsDelegates` property of `MaterialApp`

### Warning
To avoid key doublons, we recommand to suffix Archethic DApp Framework imports in the DApp project.<br/>
For example: `import 'package:archethic_dapp_framework_flutter/archethic-dapp-framework-flutter.dart as aedappfm;` 


## Providers tracker

`ProvidersTracker` keeps track of alive providers.

> Usage in production is not recommended.
### Howto use
#### Register the observer
```dart
import 'package:archethic_dapp_framework_flutter/archethic_dapp_framework_flutter.dart' as aedappfm;
runApp(
 ProviderScope(
   observers: [
     if (kDebugMode) aedappfm.ProvidersTracker(),
   ],
   child: const MyApp(),
 ),
;
```
#### Check all alive providers
In debug console, check `ProvidersTracker` content :
##### Command :
```dart
aedappfm.ProvidersTracker().aliveProviders
```
##### Result :
```dart
Set
[0] = AutoDisposeProvider (oracleServiceProvider:AutoDisposeProvider<OracleService>#2d1c8)
[1] = AutoDisposeAsyncNotifierProviderImpl (_archethicOracleUCONotifierProvider:AutoDisposeAsyncNotifierProviderImpl<_ArchethicOracleUCONotifier, ArchethicOracleUCO>#4aa30)
[2] = AutoDisposeProvider (apiServiceProvider:AutoDisposeProvider<ApiService>#e4552)
```
#### Filter and READ providers
In debug console :
##### Command :
```dart
aedappfm.ProvidersTracker().byName('oracle').read
```
##### Result :
```dart
Set
[0] = AutoDisposeProvider (oracleServiceProvider:AutoDisposeProvider<OracleService>#2d1c8)
[1] = AutoDisposeAsyncNotifierProviderImpl (_archethicOracleUCONotifierProvider:AutoDisposeAsyncNotifierProviderImpl<_ArchethicOracleUCONotifier, ArchethicOracleUCO>#4aa30)
```
#### Filter and WATCH providers
In debug console :
##### Command :
```dart
// watch returns a stream. Here we just log the number of providers whose name matches 'oracle'
aedappfm.ProvidersTracker().byName('oracle').watch.forEach((providers) => print('>>> Oracle : ${providers.length}'))
```
##### Result :
Each time the alive providers matching 'oracle' changes, we have a log like this :
```dart
>>> Oracle : 2
```
