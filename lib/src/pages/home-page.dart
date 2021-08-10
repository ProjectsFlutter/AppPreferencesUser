import 'package:app_preferences_user/src/pages/setting-page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  static final String routeName = 'home';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Preferencias de usuario')
      ),
      drawer: _crearMenu(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Color secundario:'),
          Divider(),
          Text('Género:'),
          Divider(),
          Text('Nombre de usuario:'),
          Divider(),
        ],
      ),
    );
  }

  Drawer _crearMenu( BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/menu-img.jpg'),
                fit: BoxFit.fill
              )
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Colors.blue),
            title: Text('Home'),
            onTap: ()=> Navigator.pushReplacementNamed(context, HomePage.routeName),
          ),
          ListTile(
            leading: Icon(Icons.api, color: Colors.blue),
            title: Text('Api'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.people, color: Colors.blue),
            title: Text('People'),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.blue),
            title: Text('Settings'),
            onTap: (){
              Navigator.pushReplacementNamed(context, SettingPage.routeName);
            },
          )
        ],
      ),
    );
  }
}