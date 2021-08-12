import 'package:app_preferences_user/src/share/preferencias-share.dart';
import 'package:app_preferences_user/src/widgets/menu-widget.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  static final String routeName = 'setting';

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  bool _colorSecundario;
  int _genero;

  TextEditingController _textController;
  final prefs = new PreferenciaUsuario();

  @override
    void initState(){
      // TODO: implement initState
      super.initState();
      _genero = prefs.genero;
      _colorSecundario = prefs.colorSecundario;
      _textController = new TextEditingController(text: prefs.nombreUsuario);
    }

  _setSelectedRadio(int valor){
    prefs.genero = valor;
    _genero = valor;
    setState((){});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuración'),
        backgroundColor: (prefs.colorSecundario) ? Colors.teal : Colors.blue,
      ),
      drawer: MenuWidget(),
      body: ListView(
        children: [
          Container(
            padding:  EdgeInsets.all(5.0),
            child: Text('Settings',style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
          ),
          Divider(),
          SwitchListTile(
            value: _colorSecundario, 
            title: Text('Color secundario'),
            onChanged: (value){
              setState(() {
                 _colorSecundario = value;
                 prefs.colorSecundario = value;
              });
            }
          ),
          RadioListTile(
            value: 1, 
            title: Text('Masculino'),
            groupValue: _genero, 
            onChanged: _setSelectedRadio
          ),
          RadioListTile(
            value: 2, 
            title: Text('Femenino'),
            groupValue: _genero, 
            onChanged: _setSelectedRadio
          ),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                labelText: 'Nombre',
                helperText: 'Nombre de la persona usando el télefono'
              ),
              onChanged: (value){
                prefs.nombreUsuario = value;
              }
            ),
          )
        ],
      )
    );
  }
}
