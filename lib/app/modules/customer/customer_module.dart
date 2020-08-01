import 'customer_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'customer_page.dart';

class CustomerModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CustomerController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => CustomerPage()),
      ];

  static Inject get to => Inject<CustomerModule>.of();
}
