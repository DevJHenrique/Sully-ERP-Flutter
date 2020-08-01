import 'package:mobx/mobx.dart';

part 'finances_controller.g.dart';

class FinancesController = _FinancesControllerBase with _$FinancesController;

abstract class _FinancesControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
