import 'package:app_preferences_user/src/pages/home-page.dart';
import 'package:app_preferences_user/src/pages/setting-page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferencias',
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName    : (_)=> HomePage(),
        SettingPage.routeName : (_)=> SettingPage(),
      },
    );
  }
}