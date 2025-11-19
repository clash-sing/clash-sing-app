import 'package:clash_sing_app/src/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:clash_sing_app/generated/app_localizations.dart';
import 'package:mmkv/mmkv.dart';

import 'src/ui/home/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final rootDir = await MMKV.initialize();
  debugPrint('MMKV for flutter with rootDir = $rootDir');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) {
        return S.of(context).homePageTitle;
      },
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('zh'), // Chinese
      ],
      home: const HomePage(),
    );
  }
}
