import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenciaUsuario{
  static final PreferenciaUsuario _instancia = new PreferenciaUsuario._internal();
  
  factory PreferenciaUsuario(){
    return _instancia;
  }

  PreferenciaUsuario._internal();
  SharedPreferences _prefs;

  initPrefs() async{
     _prefs = await SharedPreferences.getInstance();
  }

  get genero{
    return _prefs.get('genero');
  }

  set genero (int value){
    _prefs.setInt('genero', value);
  }

}