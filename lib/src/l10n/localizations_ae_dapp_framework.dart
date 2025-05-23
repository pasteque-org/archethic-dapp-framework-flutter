import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'localizations_ae_dapp_framework_en.dart';
import 'localizations_ae_dapp_framework_fr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/localizations_ae_dapp_framework.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('fr')
  ];

  /// No description provided for @aedappfm_yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get aedappfm_yes;

  /// No description provided for @aedappfm_no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get aedappfm_no;

  /// No description provided for @aedappfm_btn_close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get aedappfm_btn_close;

  /// No description provided for @aedappfm_btn_max.
  ///
  /// In en, this message translates to:
  /// **'MAX'**
  String get aedappfm_btn_max;

  /// No description provided for @aedappfm_btn_half.
  ///
  /// In en, this message translates to:
  /// **'HALF'**
  String get aedappfm_btn_half;

  /// No description provided for @aedappfm_btn_resume.
  ///
  /// In en, this message translates to:
  /// **'Resume'**
  String get aedappfm_btn_resume;

  /// No description provided for @aedappfm_confirmationPopupTitle.
  ///
  /// In en, this message translates to:
  /// **'Confirmation Request'**
  String get aedappfm_confirmationPopupTitle;

  /// No description provided for @aedappfm_version.
  ///
  /// In en, this message translates to:
  /// **'Version:'**
  String get aedappfm_version;

  /// No description provided for @aedappfm_build.
  ///
  /// In en, this message translates to:
  /// **'Build:'**
  String get aedappfm_build;

  /// No description provided for @aedappfm_connectionWalletConnect.
  ///
  /// In en, this message translates to:
  /// **'Connect your wallet'**
  String get aedappfm_connectionWalletConnect;

  /// No description provided for @aedappfm_consent_already_part1.
  ///
  /// In en, this message translates to:
  /// **'The '**
  String get aedappfm_consent_already_part1;

  /// No description provided for @aedappfm_consent_already_part2.
  ///
  /// In en, this message translates to:
  /// **'Terms of Use'**
  String get aedappfm_consent_already_part2;

  /// No description provided for @aedappfm_consent_already_part3.
  ///
  /// In en, this message translates to:
  /// **' and '**
  String get aedappfm_consent_already_part3;

  /// No description provided for @aedappfm_consent_already_part4.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get aedappfm_consent_already_part4;

  /// No description provided for @aedappfm_consent_already_part5.
  ///
  /// In en, this message translates to:
  /// **' was last accepted on '**
  String get aedappfm_consent_already_part5;

  /// No description provided for @aedappfm_consent_to_check_part1.
  ///
  /// In en, this message translates to:
  /// **'I agree to the '**
  String get aedappfm_consent_to_check_part1;

  /// No description provided for @aedappfm_consent_to_check_part2.
  ///
  /// In en, this message translates to:
  /// **'Terms of Use'**
  String get aedappfm_consent_to_check_part2;

  /// No description provided for @aedappfm_consent_to_check_part3.
  ///
  /// In en, this message translates to:
  /// **' and '**
  String get aedappfm_consent_to_check_part3;

  /// No description provided for @aedappfm_consent_to_check_part4.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get aedappfm_consent_to_check_part4;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'fr': return AppLocalizationsFr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
