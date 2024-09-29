/// Generated file. Do not edit.
///
/// Original: lib/core/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 108 (54 per locale)

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.ja;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.ja) // set locale
/// - Locale locale = AppLocale.ja.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.ja) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	ja(languageCode: 'ja', build: Translations.build),
	en(languageCode: 'en', build: _StringsEn.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	String get hello => 'こんにちは、世界';
	String get flutterKaigi => 'FlutterKaigi';
	String get year => '2024';
	String get officialSite => '公式サイト';
	String get ticketSite => 'チケットサイト';
	late final _StringsHomePageJa homePage = _StringsHomePageJa._(_root);
	late final _StringsAuthorizationJa authorization = _StringsAuthorizationJa._(_root);
	late final _StringsFooterJa footer = _StringsFooterJa._(_root);
	late final _StringsErrorJa error = _StringsErrorJa._(_root);
}

// Path: homePage
class _StringsHomePageJa {
	_StringsHomePageJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsHomePageTitleAndLogoJa titleAndLogo = _StringsHomePageTitleAndLogoJa._(_root);
	late final _StringsHomePageTicketsJa tickets = _StringsHomePageTicketsJa._(_root);
}

// Path: authorization
class _StringsAuthorizationJa {
	_StringsAuthorizationJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String alreadyLoggedInWithMailAddress({required Object mailAddress}) => '${mailAddress} でログイン済みです';
	String get logOut => 'ログアウト';
	late final _StringsAuthorizationLogOutDialogJa logOutDialog = _StringsAuthorizationLogOutDialogJa._(_root);
}

// Path: footer
class _StringsFooterJa {
	_StringsFooterJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get copyRight => '@ FlutterKaigi 2024 実行委員会';
	late final _StringsFooterGoogleCopyrightJa googleCopyright = _StringsFooterGoogleCopyrightJa._(_root);
	String get codeOfConduct => '行動規範';
	String get privacyPolicy => 'プライバシーポリシー';
	String get contact => 'お問い合わせ';
	String get license => 'ライセンス';
}

// Path: error
class _StringsErrorJa {
	_StringsErrorJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsErrorNetworkJa network = _StringsErrorNetworkJa._(_root);
}

// Path: homePage.titleAndLogo
class _StringsHomePageTitleAndLogoJa {
	_StringsHomePageTitleAndLogoJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get date => 'November\n21(Thu) - 22(Fri)';
	String get location => '有明セントラルタワーホール&カンファレンス';
}

// Path: homePage.tickets
class _StringsHomePageTicketsJa {
	_StringsHomePageTicketsJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsHomePageTicketsVariantJa variant = _StringsHomePageTicketsVariantJa._(_root);
	String get buyTicket => 'チケットを購入';
	String get loginBeforeBuy => 'チケットを購入・登録するためには、お手持ちのGoogleアカウントでログインしてください。';
	String get ticketManagedByGoogleAccount => '購入もしくは登録後に、チケットはGoogleアカウントに紐づいて管理されます。';
	String price({required Object price}) => '¥${price}';
	late final _StringsHomePageTicketsNormalJa normal = _StringsHomePageTicketsNormalJa._(_root);
	late final _StringsHomePageTicketsInvitationJa invitation = _StringsHomePageTicketsInvitationJa._(_root);
	late final _StringsHomePageTicketsPersonalSponsorJa personalSponsor = _StringsHomePageTicketsPersonalSponsorJa._(_root);
	late final _StringsHomePageTicketsStudentJa student = _StringsHomePageTicketsStudentJa._(_root);
}

// Path: authorization.logOutDialog
class _StringsAuthorizationLogOutDialogJa {
	_StringsAuthorizationLogOutDialogJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'ログアウトしますか？';
	String get description => 'ログアウトすると、再度ログインするまでチケットの購入や登録ができなくなります。';
	String get cancel => 'キャンセル';
	String get logout => 'ログアウト';
}

// Path: footer.googleCopyright
class _StringsFooterGoogleCopyrightJa {
	_StringsFooterGoogleCopyrightJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get text0 => 'Flutter and the related logo are trademarks of Google LLC. FlutterKaigi is not affiliated with or otherwise sponsored by Google LLC.';
	String get text1 => 'The Flutter name and the Flutter logo';
	String get text2 => 'are trademarks of Google LLC.';
}

// Path: error.network
class _StringsErrorNetworkJa {
	_StringsErrorNetworkJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get status400 => 'リクエストが不正です';
	String get status403 => 'リクエストが拒否されました';
	String get status404 => 'リクエストが見つかりません';
	String get status429 => 'リクエストが多すぎます';
	String get status500 => 'サーバーでエラーが発生しました';
	String get status503 => 'サーバーが過負荷状態です';
	String get tryAgain => '時間をおいて再度お試しください';
	String get unknown => '不明なエラーが発生しました';
}

// Path: homePage.tickets.variant
class _StringsHomePageTicketsVariantJa {
	_StringsHomePageTicketsVariantJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get general => '一般チケット';
	String get sponsor => '個人スポンサーチケット';
	late final _StringsHomePageTicketsVariantSponsorSessionJa sponsorSession = _StringsHomePageTicketsVariantSponsorSessionJa._(_root);
	late final _StringsHomePageTicketsVariantSponsorInvitationJa sponsorInvitation = _StringsHomePageTicketsVariantSponsorInvitationJa._(_root);
}

// Path: homePage.tickets.normal
class _StringsHomePageTicketsNormalJa {
	_StringsHomePageTicketsNormalJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => '一般チケット';
	String get description => '一般参加者向けチケット';
}

// Path: homePage.tickets.invitation
class _StringsHomePageTicketsInvitationJa {
	_StringsHomePageTicketsInvitationJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get description => '招待コードまたはクーポンコードをお持ちの方はこちらに入力してください';
	String get textBoxTitle => '招待コード もしくは クーポンコード';
	String get textBoxDescription => 'コードを入力';
	String get applyCodeButton => 'コードを適用';
	late final _StringsHomePageTicketsInvitationErrorJa error = _StringsHomePageTicketsInvitationErrorJa._(_root);
	late final _StringsHomePageTicketsInvitationValidationJa validation = _StringsHomePageTicketsInvitationValidationJa._(_root);
}

// Path: homePage.tickets.personalSponsor
class _StringsHomePageTicketsPersonalSponsorJa {
	_StringsHomePageTicketsPersonalSponsorJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => '個人スポンサーチケット';
	String get description => '個人スポンサー向けチケット';
}

// Path: homePage.tickets.student
class _StringsHomePageTicketsStudentJa {
	_StringsHomePageTicketsStudentJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => '学割について';
	String get description => '[仮]FlutterKaigi 2024当日に、学生(高校・大学・大学院・高等専門学校)の方は　当日に学生証を提示することによりチケット代金全額を返金致します。\n※返金は当日のみ有効です。また、一般チケットのみ対象となります。';
}

// Path: homePage.tickets.variant.sponsorSession
class _StringsHomePageTicketsVariantSponsorSessionJa {
	_StringsHomePageTicketsVariantSponsorSessionJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => 'スポンサーセッション登壇者チケット';
	String withName({required Object name}) => '${name} 社さま スポンサーセッション登壇者チケット';
}

// Path: homePage.tickets.variant.sponsorInvitation
class _StringsHomePageTicketsVariantSponsorInvitationJa {
	_StringsHomePageTicketsVariantSponsorInvitationJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => 'スポンサー招待チケット';
	String withName({required Object name}) => '${name} 社さま スポンサー招待チケット';
}

// Path: homePage.tickets.invitation.error
class _StringsHomePageTicketsInvitationErrorJa {
	_StringsHomePageTicketsInvitationErrorJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get status404 => 'プロモーションコードが見つかりません';
	String get status429 => 'リクエストが多過ぎます 数分後に再度お試しください';
	String get status500 => 'サーバーでエラーが発生しました';
	String get unknown => '不明なエラーが発生しました';
}

// Path: homePage.tickets.invitation.validation
class _StringsHomePageTicketsInvitationValidationJa {
	_StringsHomePageTicketsInvitationValidationJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get ok => 'プロモーションコードが有効です';
	String get invalid => 'プロモーションコードが無効です';
	String get nextPayment => '決定を押すと、Stripeへ遷移します。プロモーションコードが適用されていることを確認してチケットを購入してください';
	String get nextConfirmOrder => '決定を押すと、Stripeへ遷移します。プロモーションコードが適用されていることを確認してチケットの注文を確定してください';
	late final _StringsHomePageTicketsInvitationValidationDialogJa dialog = _StringsHomePageTicketsInvitationValidationDialogJa._(_root);
}

// Path: homePage.tickets.invitation.validation.dialog
class _StringsHomePageTicketsInvitationValidationDialogJa {
	_StringsHomePageTicketsInvitationValidationDialogJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get ok => '決定';
	String get cancel => 'キャンセル';
}

// Path: <root>
class _StringsEn extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsEn _root = this; // ignore: unused_field

	// Translations
	@override String get hello => 'Hello, World!';
	@override String get flutterKaigi => 'FlutterKaigi';
	@override String get year => '2024';
	@override String get officialSite => 'Official Site';
	@override String get ticketSite => 'Ticket Site';
	@override late final _StringsHomePageEn homePage = _StringsHomePageEn._(_root);
	@override late final _StringsAuthorizationEn authorization = _StringsAuthorizationEn._(_root);
	@override late final _StringsFooterEn footer = _StringsFooterEn._(_root);
	@override late final _StringsErrorEn error = _StringsErrorEn._(_root);
}

// Path: homePage
class _StringsHomePageEn extends _StringsHomePageJa {
	_StringsHomePageEn._(_StringsEn root) : this._root = root, super._(root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
	@override late final _StringsHomePageTitleAndLogoEn titleAndLogo = _StringsHomePageTitleAndLogoEn._(_root);
	@override late final _StringsHomePageTicketsEn tickets = _StringsHomePageTicketsEn._(_root);
}

// Path: authorization
class _StringsAuthorizationEn extends _StringsAuthorizationJa {
	_StringsAuthorizationEn._(_StringsEn root) : this._root = root, super._(root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
	@override String alreadyLoggedInWithMailAddress({required Object mailAddress}) => 'Already logged in with ${mailAddress}';
	@override String get logOut => 'Log Out';
	@override late final _StringsAuthorizationLogOutDialogEn logOutDialog = _StringsAuthorizationLogOutDialogEn._(_root);
}

// Path: footer
class _StringsFooterEn extends _StringsFooterJa {
	_StringsFooterEn._(_StringsEn root) : this._root = root, super._(root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
	@override String get copyRight => '@ FlutterKaigi 2024 Organizing Committee';
	@override late final _StringsFooterGoogleCopyrightEn googleCopyright = _StringsFooterGoogleCopyrightEn._(_root);
	@override String get codeOfConduct => 'Code of Conduct';
	@override String get privacyPolicy => 'Privacy Policy';
	@override String get contact => 'Contact';
	@override String get license => 'License';
}

// Path: error
class _StringsErrorEn extends _StringsErrorJa {
	_StringsErrorEn._(_StringsEn root) : this._root = root, super._(root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
	@override late final _StringsErrorNetworkEn network = _StringsErrorNetworkEn._(_root);
}

// Path: homePage.titleAndLogo
class _StringsHomePageTitleAndLogoEn extends _StringsHomePageTitleAndLogoJa {
	_StringsHomePageTitleAndLogoEn._(_StringsEn root) : this._root = root, super._(root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
	@override String get date => 'November\n21(Thu) - 22(Fri)';
	@override String get location => 'Ariake Central Tower & Conference';
}

// Path: homePage.tickets
class _StringsHomePageTicketsEn extends _StringsHomePageTicketsJa {
	_StringsHomePageTicketsEn._(_StringsEn root) : this._root = root, super._(root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
	@override String get buyTicket => 'Buy Ticket';
	@override String get loginBeforeBuy => 'Please login with your Google account to buy or register a ticket.';
	@override String get ticketManagedByGoogleAccount => 'After purchase or registration, tickets will be managed by your Google account.';
	@override late final _StringsHomePageTicketsNormalEn normal = _StringsHomePageTicketsNormalEn._(_root);
	@override late final _StringsHomePageTicketsInvitationEn invitation = _StringsHomePageTicketsInvitationEn._(_root);
	@override late final _StringsHomePageTicketsPersonalSponsorEn personalSponsor = _StringsHomePageTicketsPersonalSponsorEn._(_root);
	@override late final _StringsHomePageTicketsStudentEn student = _StringsHomePageTicketsStudentEn._(_root);
}

// Path: authorization.logOutDialog
class _StringsAuthorizationLogOutDialogEn extends _StringsAuthorizationLogOutDialogJa {
	_StringsAuthorizationLogOutDialogEn._(_StringsEn root) : this._root = root, super._(root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Are you sure you want to log out?';
	@override String get description => 'Logging out will prevent you from purchasing or registering tickets until you log in again.';
	@override String get cancel => 'Cancel';
	@override String get logout => 'Log Out';
}

// Path: footer.googleCopyright
class _StringsFooterGoogleCopyrightEn extends _StringsFooterGoogleCopyrightJa {
	_StringsFooterGoogleCopyrightEn._(_StringsEn root) : this._root = root, super._(root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
	@override String get text0 => 'Flutter and the related logo are trademarks of Google LLC. FlutterKaigi is not affiliated with or otherwise sponsored by Google LLC.';
	@override String get text1 => 'The Flutter name and the Flutter logo';
	@override String get text2 => 'are trademarks of Google LLC.';
}

// Path: error.network
class _StringsErrorNetworkEn extends _StringsErrorNetworkJa {
	_StringsErrorNetworkEn._(_StringsEn root) : this._root = root, super._(root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
	@override String get status400 => 'Bad Request';
	@override String get status403 => 'Forbidden';
	@override String get status404 => 'Not Found';
	@override String get status429 => 'Too Many Requests';
	@override String get status500 => 'Internal Server Error';
	@override String get status503 => 'Service Unavailable';
	@override String get tryAgain => 'Please try again later.';
	@override String get unknown => 'An unknown error occurred.';
}

// Path: homePage.tickets.normal
class _StringsHomePageTicketsNormalEn extends _StringsHomePageTicketsNormalJa {
	_StringsHomePageTicketsNormalEn._(_StringsEn root) : this._root = root, super._(root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
	@override String get name => 'Normal Ticket';
	@override String price({required Object price}) => '¥${price}';
	@override String get description => 'General admission ticket';
}

// Path: homePage.tickets.invitation
class _StringsHomePageTicketsInvitationEn extends _StringsHomePageTicketsInvitationJa {
	_StringsHomePageTicketsInvitationEn._(_StringsEn root) : this._root = root, super._(root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
	@override String get description => 'If you have an invitation code or coupon code, please enter it here.';
	@override String get textBoxTitle => 'Invitation Code or Coupon Code';
	@override String get textBoxDescription => 'Enter the code';
	@override String get applyCodeButton => 'Apply Code';
	@override late final _StringsHomePageTicketsInvitationValidationEn validation = _StringsHomePageTicketsInvitationValidationEn._(_root);
}

// Path: homePage.tickets.personalSponsor
class _StringsHomePageTicketsPersonalSponsorEn extends _StringsHomePageTicketsPersonalSponsorJa {
	_StringsHomePageTicketsPersonalSponsorEn._(_StringsEn root) : this._root = root, super._(root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
	@override String get name => 'Personal Sponsor Ticket';
	@override String get description => 'Ticket for individual sponsors';
}

// Path: homePage.tickets.student
class _StringsHomePageTicketsStudentEn extends _StringsHomePageTicketsStudentJa {
	_StringsHomePageTicketsStudentEn._(_StringsEn root) : this._root = root, super._(root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
	@override String get name => 'Student Discount';
	@override String get description => 'If you are a student (High school, University, College of Technology(KOSEN), etc.) on the day of FlutterKaigi 2024, we will refund the full ticket price by showing your student ID on the day of this event.\n * Refunds are only valid on the day of the event. Only general tickets are eligible.';
}

// Path: homePage.tickets.invitation.validation
class _StringsHomePageTicketsInvitationValidationEn extends _StringsHomePageTicketsInvitationValidationJa {
	_StringsHomePageTicketsInvitationValidationEn._(_StringsEn root) : this._root = root, super._(root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
	@override String get ok => 'Your code is valid!';
	@override String get invalid => 'Your code is invalid.';
	@override String get nextPayment => 'By pressing OK, you will be redirected to Stripe. Please confirm that the promotion code is applied and purchase the ticket.';
	@override String get nextConfirmOrder => 'By pressing OK, you will be redirected to Stripe. Please confirm that the promotion code is applied and confirm the order.';
	@override late final _StringsHomePageTicketsInvitationValidationDialogEn dialog = _StringsHomePageTicketsInvitationValidationDialogEn._(_root);
}

// Path: homePage.tickets.invitation.validation.dialog
class _StringsHomePageTicketsInvitationValidationDialogEn extends _StringsHomePageTicketsInvitationValidationDialogJa {
	_StringsHomePageTicketsInvitationValidationDialogEn._(_StringsEn root) : this._root = root, super._(root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
	@override String get ok => 'OK';
	@override String get cancel => 'Cancel';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'こんにちは、世界';
			case 'flutterKaigi': return 'FlutterKaigi';
			case 'year': return '2024';
			case 'officialSite': return '公式サイト';
			case 'ticketSite': return 'チケットサイト';
			case 'homePage.titleAndLogo.date': return 'November\n21(Thu) - 22(Fri)';
			case 'homePage.titleAndLogo.location': return '有明セントラルタワーホール&カンファレンス';
			case 'homePage.tickets.variant.general': return '一般チケット';
			case 'homePage.tickets.variant.sponsor': return '個人スポンサーチケット';
			case 'homePage.tickets.variant.sponsorSession.name': return 'スポンサーセッション登壇者チケット';
			case 'homePage.tickets.variant.sponsorSession.withName': return ({required Object name}) => '${name} 社さま スポンサーセッション登壇者チケット';
			case 'homePage.tickets.variant.sponsorInvitation.name': return 'スポンサー招待チケット';
			case 'homePage.tickets.variant.sponsorInvitation.withName': return ({required Object name}) => '${name} 社さま スポンサー招待チケット';
			case 'homePage.tickets.buyTicket': return 'チケットを購入';
			case 'homePage.tickets.loginBeforeBuy': return 'チケットを購入・登録するためには、お手持ちのGoogleアカウントでログインしてください。';
			case 'homePage.tickets.ticketManagedByGoogleAccount': return '購入もしくは登録後に、チケットはGoogleアカウントに紐づいて管理されます。';
			case 'homePage.tickets.price': return ({required Object price}) => '¥${price}';
			case 'homePage.tickets.normal.name': return '一般チケット';
			case 'homePage.tickets.normal.description': return '一般参加者向けチケット';
			case 'homePage.tickets.invitation.description': return '招待コードまたはクーポンコードをお持ちの方はこちらに入力してください';
			case 'homePage.tickets.invitation.textBoxTitle': return '招待コード もしくは クーポンコード';
			case 'homePage.tickets.invitation.textBoxDescription': return 'コードを入力';
			case 'homePage.tickets.invitation.applyCodeButton': return 'コードを適用';
			case 'homePage.tickets.invitation.error.status404': return 'プロモーションコードが見つかりません';
			case 'homePage.tickets.invitation.error.status429': return 'リクエストが多過ぎます 数分後に再度お試しください';
			case 'homePage.tickets.invitation.error.status500': return 'サーバーでエラーが発生しました';
			case 'homePage.tickets.invitation.error.unknown': return '不明なエラーが発生しました';
			case 'homePage.tickets.invitation.validation.ok': return 'プロモーションコードが有効です';
			case 'homePage.tickets.invitation.validation.invalid': return 'プロモーションコードが無効です';
			case 'homePage.tickets.invitation.validation.nextPayment': return '決定を押すと、Stripeへ遷移します。プロモーションコードが適用されていることを確認してチケットを購入してください';
			case 'homePage.tickets.invitation.validation.nextConfirmOrder': return '決定を押すと、Stripeへ遷移します。プロモーションコードが適用されていることを確認してチケットの注文を確定してください';
			case 'homePage.tickets.invitation.validation.dialog.ok': return '決定';
			case 'homePage.tickets.invitation.validation.dialog.cancel': return 'キャンセル';
			case 'homePage.tickets.personalSponsor.name': return '個人スポンサーチケット';
			case 'homePage.tickets.personalSponsor.description': return '個人スポンサー向けチケット';
			case 'homePage.tickets.student.name': return '学割について';
			case 'homePage.tickets.student.description': return '[仮]FlutterKaigi 2024当日に、学生(高校・大学・大学院・高等専門学校)の方は　当日に学生証を提示することによりチケット代金全額を返金致します。\n※返金は当日のみ有効です。また、一般チケットのみ対象となります。';
			case 'authorization.alreadyLoggedInWithMailAddress': return ({required Object mailAddress}) => '${mailAddress} でログイン済みです';
			case 'authorization.logOut': return 'ログアウト';
			case 'authorization.logOutDialog.title': return 'ログアウトしますか？';
			case 'authorization.logOutDialog.description': return 'ログアウトすると、再度ログインするまでチケットの購入や登録ができなくなります。';
			case 'authorization.logOutDialog.cancel': return 'キャンセル';
			case 'authorization.logOutDialog.logout': return 'ログアウト';
			case 'footer.copyRight': return '@ FlutterKaigi 2024 実行委員会';
			case 'footer.googleCopyright.text0': return 'Flutter and the related logo are trademarks of Google LLC. FlutterKaigi is not affiliated with or otherwise sponsored by Google LLC.';
			case 'footer.googleCopyright.text1': return 'The Flutter name and the Flutter logo';
			case 'footer.googleCopyright.text2': return 'are trademarks of Google LLC.';
			case 'footer.codeOfConduct': return '行動規範';
			case 'footer.privacyPolicy': return 'プライバシーポリシー';
			case 'footer.contact': return 'お問い合わせ';
			case 'footer.license': return 'ライセンス';
			case 'error.network.status400': return 'リクエストが不正です';
			case 'error.network.status403': return 'リクエストが拒否されました';
			case 'error.network.status404': return 'リクエストが見つかりません';
			case 'error.network.status429': return 'リクエストが多すぎます';
			case 'error.network.status500': return 'サーバーでエラーが発生しました';
			case 'error.network.status503': return 'サーバーが過負荷状態です';
			case 'error.network.tryAgain': return '時間をおいて再度お試しください';
			case 'error.network.unknown': return '不明なエラーが発生しました';
			default: return null;
		}
	}
}

extension on _StringsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'Hello, World!';
			case 'flutterKaigi': return 'FlutterKaigi';
			case 'year': return '2024';
			case 'officialSite': return 'Official Site';
			case 'ticketSite': return 'Ticket Site';
			case 'homePage.titleAndLogo.date': return 'November\n21(Thu) - 22(Fri)';
			case 'homePage.titleAndLogo.location': return 'Ariake Central Tower & Conference';
			case 'homePage.tickets.buyTicket': return 'Buy Ticket';
			case 'homePage.tickets.loginBeforeBuy': return 'Please login with your Google account to buy or register a ticket.';
			case 'homePage.tickets.ticketManagedByGoogleAccount': return 'After purchase or registration, tickets will be managed by your Google account.';
			case 'homePage.tickets.normal.name': return 'Normal Ticket';
			case 'homePage.tickets.normal.price': return ({required Object price}) => '¥${price}';
			case 'homePage.tickets.normal.description': return 'General admission ticket';
			case 'homePage.tickets.invitation.description': return 'If you have an invitation code or coupon code, please enter it here.';
			case 'homePage.tickets.invitation.textBoxTitle': return 'Invitation Code or Coupon Code';
			case 'homePage.tickets.invitation.textBoxDescription': return 'Enter the code';
			case 'homePage.tickets.invitation.applyCodeButton': return 'Apply Code';
			case 'homePage.tickets.invitation.validation.ok': return 'Your code is valid!';
			case 'homePage.tickets.invitation.validation.invalid': return 'Your code is invalid.';
			case 'homePage.tickets.invitation.validation.nextPayment': return 'By pressing OK, you will be redirected to Stripe. Please confirm that the promotion code is applied and purchase the ticket.';
			case 'homePage.tickets.invitation.validation.nextConfirmOrder': return 'By pressing OK, you will be redirected to Stripe. Please confirm that the promotion code is applied and confirm the order.';
			case 'homePage.tickets.invitation.validation.dialog.ok': return 'OK';
			case 'homePage.tickets.invitation.validation.dialog.cancel': return 'Cancel';
			case 'homePage.tickets.personalSponsor.name': return 'Personal Sponsor Ticket';
			case 'homePage.tickets.personalSponsor.description': return 'Ticket for individual sponsors';
			case 'homePage.tickets.student.name': return 'Student Discount';
			case 'homePage.tickets.student.description': return 'If you are a student (High school, University, College of Technology(KOSEN), etc.) on the day of FlutterKaigi 2024, we will refund the full ticket price by showing your student ID on the day of this event.\n * Refunds are only valid on the day of the event. Only general tickets are eligible.';
			case 'authorization.alreadyLoggedInWithMailAddress': return ({required Object mailAddress}) => 'Already logged in with ${mailAddress}';
			case 'authorization.logOut': return 'Log Out';
			case 'authorization.logOutDialog.title': return 'Are you sure you want to log out?';
			case 'authorization.logOutDialog.description': return 'Logging out will prevent you from purchasing or registering tickets until you log in again.';
			case 'authorization.logOutDialog.cancel': return 'Cancel';
			case 'authorization.logOutDialog.logout': return 'Log Out';
			case 'footer.copyRight': return '@ FlutterKaigi 2024 Organizing Committee';
			case 'footer.googleCopyright.text0': return 'Flutter and the related logo are trademarks of Google LLC. FlutterKaigi is not affiliated with or otherwise sponsored by Google LLC.';
			case 'footer.googleCopyright.text1': return 'The Flutter name and the Flutter logo';
			case 'footer.googleCopyright.text2': return 'are trademarks of Google LLC.';
			case 'footer.codeOfConduct': return 'Code of Conduct';
			case 'footer.privacyPolicy': return 'Privacy Policy';
			case 'footer.contact': return 'Contact';
			case 'footer.license': return 'License';
			case 'error.network.status400': return 'Bad Request';
			case 'error.network.status403': return 'Forbidden';
			case 'error.network.status404': return 'Not Found';
			case 'error.network.status429': return 'Too Many Requests';
			case 'error.network.status500': return 'Internal Server Error';
			case 'error.network.status503': return 'Service Unavailable';
			case 'error.network.tryAgain': return 'Please try again later.';
			case 'error.network.unknown': return 'An unknown error occurred.';
			default: return null;
		}
	}
}
