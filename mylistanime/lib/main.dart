import 'package:flutter/material.dart';

import 'screens/login/login_screen.dart';

void main() {
  runApp(MyListAnime());
}

class MyListAnime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return    MaterialApp(
    theme: ThemeData(
    primaryColor: Colors.white,
    accentColor: Colors.blueAccent[700],
    buttonTheme: ButtonThemeData(
    buttonColor: Colors.blueAccent[900],
    textTheme: ButtonTextTheme.primary,
    ),
    ),
    supportedLocales: [const Locale('pt', 'BR')],
//      home: FormCreateNewClient(),
    debugShowCheckedModeBanner: false,
    home: LoginScreen(),
    );
  }
}
