# 4.0.0
- Forked [archethic](https://github.com/archethic-foundation/archethic-wallet-client-dart.git)
- **Flutter SDK migration**: Updated the Flutter version to `3.29.3` to ensure compatibility with the latest stable tooling and features.
- **Dartdoc documentation**: Added documentation comments throughout the codebase to improve API documentation via [`dartdoc`](https://dart.dev/tools/dartdoc).
- **Linter configuration**: Enabled and applied a comprehensive set of linter rules based on the official list ([dart.dev/tools/linter-rules/all](https://dart.dev/tools/linter-rules/all)), including adjustments to comply with newly introduced rules.
- **Code cleanup**: Removed the unused `errors` class to reduce code clutter and improve maintainability.
- **Dependency upgrades**: Updated package dependencies, including a major upgrade to [`freezed`](https://pub.dev/packages/freezed) version `3.0.0`, following the official [migration guide](https://github.com/rrousselGit/freezed/blob/master/packages/freezed/migration_guide.md), to take advantage of its latest improvements and compatibility fixes.

# 3.5.3
- ⬆️ Upgrade dependencies (archethic_lib_dart: 7.9.2)
- ⬆️ Upgrade dependencies (archethic_wallet_client: 2.3.3)

# 3.5.2
- ⬆️ Upgrade dependencies (archethic_lib_dart: 7.9.1)
- ⬆️ Upgrade dependencies (archethic_wallet_client: 2.3.2)

# 3.5.1
- Upgrade dependencies

# 3.5.0
- WASM Activation in mainnet network

# 3.4.4
- Upgrade dependencies

# 3.4.3
- Upgrade dependencies

# 3.4.2
- License MIT

# 3.4.1
- ⬆️ Upgrade dependencies (archethic_wallet_client: 2.2.1)

# 3.4.0
- ⬆️ Upgrade dependencies (archethic_lib_dart: 7.7.0)
- ⬆️ Upgrade dependencies (archethic_wallet_client: 2.2.0)
- Upgrade flutter version to 3.27 

# 3.3.2
- ⬆️ Upgrade dependencies (archethic_lib_dart: 7.6.0)

# 3.3.1
- ⬆️ Upgrade dependencies (archethic_lib_dart: 7.5.1)
- ⬆️ Upgrade dependencies (archethic_wallet_client: 2.1.11)

# 3.3.0

- Update some widgets

# 3.2.8

- ⬆️ Upgrade `archethic_wallet_client` & `archethic_lib_dart` versions.

# 3.2.7

- ⬆️ Upgrade `archethic_wallet_client` & `archethic_lib_dart` versions.

# 3.2.6

- ⬆️ Upgrade `archethic_wallet_client` & `archethic_lib_dart` stable versions.

# 3.2.6-beta.4

- ⬆️ Upgrade dependencies (archethic_lib_dart: 7.0.0-beta, archethic_wallet_client: 2.1.8-beta.2)
- Add new properties in `environment` object

# 3.2.6-beta.3

- Add `oracleService` provider
- Add `ProvidersTracker` debugging tool to monitor alive providers.

# 3.2.6-beta.2

- ⬆️ Upgrade `archethic_wallet_client`.

# 3.2.6-beta

- ⬆️ Upgrade dependencies

# 3.2.5

- ✅ Improve lib score.
- ⬆️ Upgrade dependencies

# 3.2.4

- Export `defTokensRepositoryImpl` & `getDefTokenProvider` providers

# 3.2.3

- Add `defTokensRepository` provider

# 3.2.2

- Use MediaQuery.sizeOf(context) instead of MediaQuery.of(context).size

# 3.2.1

- Coin price notifier starts auto updates on creation.

# 3.2.0

- All providers are auto-disposable
- UCID provider returns NULL for unknown UCIDs.

# 3.1.0

- Remove GetIt usage for `OracleService`

# 3.0.3

- ✨ `AppBackground` widget : Add boxfit in param
- ✨ `ProvidersLogger` : Add timestamp in provider logs

# 3.0.2

- build: :arrow_up: Upgrade `archethic_wallet_client`

# 3.0.1

- build: :arrow_up: Upgrade `archethic_lib_dart` & `archethic_wallet_client`

# 3.0.0

- Use Logging library for [LogManager]
- **Breaking change : **[LogManager.logsActived] replaced by [LogManager.remoteLogsEnabled]

# 2.1.3

- Upgrade archethic_wallet_client to 2.1.3

# 2.1.2

- Upgrade package_info_plus to 8.0.2
- Add textStyle param in Consent Widgets

# 2.1.1

- Upgrade AWC version to 2.1.2

# 2.1.0

- Upgrade AWC version to 2.1.0

# 2.0.0

- BREAKING CHANGES: Introduce the Environment type

# 1.3.1

- Fix bug: `CoinPriceProvider` : Return 0 when ucid doesn't exist for a token
- Fix typo: fix method `startTimer` instead of `starTimer` in `CoinPriceNotifier`

# 1.3.0

- BREAKING CHANGES: `TransactionUtil` - Add `apiService` param for each method
- BREAKING CHANGES: Changing the way you load providers: `UcidsTokensProviders` & `CoinPriceProviders`
- Move coin price management to an infrastructure repository
- Add a generic token model and associated def

# 1.2.14

- Add timestamp in debug logs

# 1.2.13

- Add Bitcoin in ucids_tokens config file

# 1.2.12

- Update dependencies

# 1.2.11

- Add `precision` param in ArchethicOracleUco widget

# 1.2.10

- Update dependencies

# 1.2.9

- Add `TransactionUtil.isSCCallExecuted` method to check is a SC has been executed

# 1.2.8

- Update dependencies

# 1.2.7

- Update dependencies

# 1.2.6

- Add color params in SingleCard widget

# 1.2.5

- Add description in RPC sign tx method
- Fix PeriodicFuture class

# 1.2.4

- Update dependencies

# 1.2.3

- Migration to flutter 3.22

# 1.2.2

- Update dependencies

# 1.2.1

- refactor: Use archethic_wallet_client 2.0.0

# 1.2.0

- BREAKING CHANGES: Handle custom errors codes/messages in Dart SDK
- UI Adjustements

# 1.1.25

- Add aeEURe mainnet in ucids_tokens config file

# 1.1.24

- `Result` class. Support asynchronous callbacks in map method

# 1.1.23

- Update dependencies

# 1.1.22

- Fix aeEURe address in ucids_tokens config file

# 1.1.21

- Add aeEURe in ucids_tokens config file

# 1.1.20

- Add token EURe info + coin name fixed

# 1.1.19

- Update Archethic Dart SDK version 3.3.16

# 1.1.18

- Add useUnifyDecimalSeparator param in AmountTextInputFormatter

# 1.1.17

- Adjust logs

# 1.1.16

- Fix bugs

# 1.1.15

- VerifiedTokensNotifier & UcidsTokensNotifier init - Add network in param
- Fix bugs

# 1.1.14

- Add new Failures

# 1.1.13

- Add aeETH UCID

# 1.1.12

- Update Archethic Dart SDK version 3.3.15

# 1.1.11

- Add icon param in InProgressCircularStepProgressIndicator Widget
- Fix onPress action when AppButton is disabled

# 1.1.10

- Fix consentement local db management

# 1.1.9

- Fix crash with PopupCloseButton widget

# 1.1.8

- Update Archethic Dart SDK version 3.3.14

# 1.1.7

- Widgets UI Improvements

# 1.1.6

- Add UDSC market price (for testnet usage)
- Update Archethic Dart SDK version 3.3.13

# 1.1.5

- Fix legal consentement management

# 1.1.4

- Add legal consentement management

# 1.1.3

- Upgrade dependencies

# 1.1.2

- Improve AmountTextInputFormatter behavior

# 1.1.1

- Upgrade dependencies

# 1.1.0

- Upgrade dependencies (AWC web extension support)

# 1.0.0

- Stable version

# 0.0.9

- Fix responsive
- Fix popup navigation

# 0.0.8

- Upgrade dependencies

# 0.0.7

- Upgrade dependencies

# 0.0.6

- Upgrade dependencies

# 0.0.5

- Get Verified tokens from blockchain

# 0.0.4

- Responsive: Add tools

# 0.0.3

- Fix bug

# 0.0.2

- Migrate to Dart 3.3 and Flutter 3.19
- Upgrade dependencies

# 0.0.1

- First version
