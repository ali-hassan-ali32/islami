// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Islami`
  String get islami {
    return Intl.message(
      'Islami',
      name: 'islami',
      desc: '',
      args: [],
    );
  }

  /// `Chapter Name`
  String get chapterName {
    return Intl.message(
      'Chapter Name',
      name: 'chapterName',
      desc: '',
      args: [],
    );
  }

  /// `Quran`
  String get quran {
    return Intl.message(
      'Quran',
      name: 'quran',
      desc: '',
      args: [],
    );
  }

  /// `Hadith`
  String get hadith {
    return Intl.message(
      'Hadith',
      name: 'hadith',
      desc: '',
      args: [],
    );
  }

  /// `Hadiths`
  String get hadiths {
    return Intl.message(
      'Hadiths',
      name: 'hadiths',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get theme {
    return Intl.message(
      'Theme',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `Aya Number`
  String get ayaNumber {
    return Intl.message(
      'Aya Number',
      name: 'ayaNumber',
      desc: '',
      args: [],
    );
  }

  /// `Dark`
  String get dark {
    return Intl.message(
      'Dark',
      name: 'dark',
      desc: '',
      args: [],
    );
  }

  /// `Light`
  String get light {
    return Intl.message(
      'Light',
      name: 'light',
      desc: '',
      args: [],
    );
  }

  /// `Radio`
  String get radio {
    return Intl.message(
      'Radio',
      name: 'radio',
      desc: '',
      args: [],
    );
  }

  /// `Sabha`
  String get sabha {
    return Intl.message(
      'Sabha',
      name: 'sabha',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get setting {
    return Intl.message(
      'Setting',
      name: 'setting',
      desc: '',
      args: [],
    );
  }

  /// `Number of Praises`
  String get numberOfPraises {
    return Intl.message(
      'Number of Praises',
      name: 'numberOfPraises',
      desc: '',
      args: [],
    );
  }

  /// `Holy Quran Radio`
  String get holyQuranRadio {
    return Intl.message(
      'Holy Quran Radio',
      name: 'holyQuranRadio',
      desc: '',
      args: [],
    );
  }

  /// `Hadith Number`
  String get hadithNumber {
    return Intl.message(
      'Hadith Number',
      name: 'hadithNumber',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
