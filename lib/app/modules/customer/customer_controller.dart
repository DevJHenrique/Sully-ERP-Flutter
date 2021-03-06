import 'package:mobx/mobx.dart';

part 'customer_controller.g.dart';

class CustomerController = _CustomerControllerBase with _$CustomerController;

abstract class _CustomerControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
