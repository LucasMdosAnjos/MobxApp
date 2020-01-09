import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Controller>(
          create: (_) => Controller(),
          dispose: (_, controller)=> controller.dispose(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter MobX',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}
