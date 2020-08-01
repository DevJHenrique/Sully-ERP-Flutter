import 'package:mobx/mobx.dart';

part 'nfe_controller.g.dart';

class NfeController = _NfeControllerBase with _$NfeController;

abstract class _NfeControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
