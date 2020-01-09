import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'body.dart';
import 'controller.dart';

class MyHomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context);

    return Scaffold(
      appBar: AppBar(
        title: Observer(builder:(_){return Text(controller.isValid ? 'Formulário Validado' : "Formulário Não Validado");}),
      ),
      body: BodyWidget()
    );
  }
}
