import 'package:mobx/mobx.dart';

part 'configurations_controller.g.dart';

class ConfigurationsController = _ConfigurationsControllerBase
    with _$ConfigurationsController;

abstract class _ConfigurationsControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
