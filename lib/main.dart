import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic_app/core/themes/app_themes.dart';
import 'package:islamic_app/modules/layout/home/screens/home_screen.dart';
import 'package:islamic_app/modules/layout/quran/screen/Chapter_details.dart';
import 'package:islamic_app/modules/splash/screens/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/providers/locale/locale_provider.dart';
import 'core/providers/theme/theme_provider.dart';
import 'modules/layout/hadith/screens/hadith_details.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var prefs = await SharedPreferences.getInstance();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(prefs: prefs),
      ),
      ChangeNotifierProvider(
        create: (context) => LocaleProvider(prefs: prefs),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = ThemeProvider.get(context);
    LocaleProvider localeProvider = LocaleProvider.get(context);

    return MaterialApp(
      title: 'islamic',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: themeProvider.currentTheme,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (_) => const SplashScreen(),
        HomeScreen.routeName: (_) => const HomeScreen(),
        ChapterDetailsScreen.routeName: (_) => const ChapterDetailsScreen(),
        HadithDetailsScreen.routeName: (_) => const HadithDetailsScreen(),
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(localeProvider.currentLocaleCode),
    );
  }
}
