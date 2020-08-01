import 'calendar_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'calendar_page.dart';

class CalendarModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CalendarController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => CalendarPage()),
      ];

  static Inject get to => Inject<CalendarModule>.of();
}
