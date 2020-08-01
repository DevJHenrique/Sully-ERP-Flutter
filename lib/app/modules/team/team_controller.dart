import 'package:mobx/mobx.dart';

part 'team_controller.g.dart';

class TeamController = _TeamControllerBase with _$TeamController;

abstract class _TeamControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
