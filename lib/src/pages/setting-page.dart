import 'package:app_preferences_user/src/widgets/menu-widget.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  static final String routeName = 'setting';

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  bool _colorSecundario = false;
  int _genero = 1;
  String _nombre = 'Jorge Luis';
  TextEditingController _textController;

  @override
    void initState() {
      // TODO: implement initState
      super.initState();
      _textController = new TextEditingController(text: _nombre);
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuración')
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
              setState(() { _colorSecundario = value;});
            }
          ),
          RadioListTile(
            value: 1, 
            title: Text('Masculino'),
            groupValue: _genero, 
            onChanged: (value){
              setState(() { _genero = value; });
            }
          ),
          RadioListTile(
            value: 2, 
            title: Text('Femenino'),
            groupValue: _genero, 
            onChanged: (value){
              setState(() { _genero = value; });
            }
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
              onChanged: (value){}
            ),
          )
        ],
      )
    );
  }
}
