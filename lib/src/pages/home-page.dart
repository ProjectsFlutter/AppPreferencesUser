import 'package:app_preferences_user/src/share/preferencias-share.dart';
import 'package:app_preferences_user/src/widgets/menu-widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  static final String routeName = 'home';
  final prefs = new PreferenciaUsuario();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Preferencias de usuario')
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Color secundario:'),
          Divider(),
          Text('Género: ${prefs.genero}'),
          Divider(),
          Text('Nombre de usuario:'),
          Divider(),
        ],
      ),
    );
  }

}