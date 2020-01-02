import 'package:mobx/mobx.dart';

class Controller{
  var _counter = Observable(0);
  int get counter => _counter.value;
  set counter(int newValue) => _counter.value = newValue;
  Action increment;
  Controller(){
    increment = Action(_increment);//Recebe em seu escopo a funcao que faz alteração no observável.
    autorun((_){
        print(counter);
    });
  }
  _increment(){
    counter++;
  }
}