import 'package:mobx/mobx.dart';

part 'calendar_controller.g.dart';

class CalendarController = _CalendarControllerBase with _$CalendarController;

abstract class _CalendarControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
