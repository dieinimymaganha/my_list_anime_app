import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mylistanime/widgets/custom_form.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 80, left: 20, right: 20),
        color: Colors.black87,
        child: ListView(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Image.asset("images/home.jpg"),
            ),
            SizedBox(
              height: 20,
            ),
            Form(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 70,
                  ),
                  CustomForm(
                    enabled: true,
                    mandatory: false,
                    label: 'E-mail',
                    obscure: false,
                    icon: Icon(Icons.email),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomForm(
                    enabled: true,
                    mandatory: false,
                    label: 'Senha',
                    obscure: true,
                    icon: Icon(Icons.save),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
