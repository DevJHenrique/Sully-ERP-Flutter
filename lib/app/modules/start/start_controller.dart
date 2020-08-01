import 'package:mobx/mobx.dart';

part 'start_controller.g.dart';

class StartController = _StartControllerBase with _$StartController;

abstract class _StartControllerBase with Store {
  @observable
  bool isCollapsed = false;

  @action
  void changeCollapse() {
    isCollapsed = !isCollapsed;
  }

  @observable
  int currentSelectedIndex = 0;

  @action
  void changeSelectedIndex(v) {
    currentSelectedIndex = v;
  }
}
