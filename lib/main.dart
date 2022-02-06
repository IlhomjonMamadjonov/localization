import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localization/pages/home_page.dart';
import 'package:localization/pages/home_page2.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    supportedLocales: [
      Locale('en', 'US'),
      Locale('ru', 'RU'),
      Locale('uz', 'UZ'),
      Locale('fr', 'FR'),
      Locale('kr', 'KR'),
      Locale('jpn', 'JPN'),



    ],
    path: 'assets/translations',
    fallbackLocale: Locale('en', 'US'),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "localization",
      home: LocalizationPage(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
