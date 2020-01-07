import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'controller.dart';

class MyHomePage extends StatelessWidget {
  final controller = Controller();

  @override
  Widget build(BuildContext context) {
    _textField({String labelText, onChanged, String Function() errorText}) {
      return TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: labelText,
          errorText: errorText == null ? null : errorText(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Observer(
                builder: (_) {
                  return _textField(
                      labelText: 'name',
                      onChanged: controller.client.changeName,
                      errorText: controller.validateName);
                },
              ),
              SizedBox(height: 20,),
              Observer(
                builder: (_) {
                  return _textField(
                      labelText: 'email',
                      onChanged: controller.client.changeEmail,
                      errorText: controller.validateEmail);
                },
              ),
              SizedBox(height: 50,),
              Observer(
                builder:(_){return RaisedButton(
                  onPressed:controller.isValid ?  (){} : null,
                  child: Text('Salvar'),
                );
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
