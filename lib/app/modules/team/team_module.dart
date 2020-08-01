import 'team_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'team_page.dart';

class TeamModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => TeamController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => TeamPage()),
      ];

  static Inject get to => Inject<TeamModule>.of();
}
