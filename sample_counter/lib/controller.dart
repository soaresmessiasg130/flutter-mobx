import 'package:mobx/mobx.dart';

part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  @observable
  int counter = 0;

  @action
  increment () {
    counter++;
  }
}

// class Controller {
//   var _counter = Observable(0);

//   int get counter => _counter.value;
//   set counter (int newCounter) => _counter.value = newCounter;

//   Action increment;

//   Controller () {
//     increment = Action(_increment);

//     autorun((_) {
//       print(counter);
//     });
//   }

//   _increment () {
//     counter++;
//   }
// }
