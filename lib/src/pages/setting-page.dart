import 'package:app_preferences_user/src/widgets/menu-widget.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  static final String routeName = 'setting';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuración')
      ),
      drawer: MenuWidget(),
      body: Center(
        child: Text('Ajustes Page'),
      )
    );
  }
}
