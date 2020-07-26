// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StartController on _StartControllerBase, Store {
  final _$collapseMenuAtom = Atom(name: '_StartControllerBase.collapseMenu');

  @override
  bool get collapseMenu {
    _$collapseMenuAtom.reportRead();
    return super.collapseMenu;
  }

  @override
  set collapseMenu(bool value) {
    _$collapseMenuAtom.reportWrite(value, super.collapseMenu, () {
      super.collapseMenu = value;
    });
  }

  final _$_StartControllerBaseActionController =
      ActionController(name: '_StartControllerBase');

  @override
  void selectcollapseMenu() {
    final _$actionInfo = _$_StartControllerBaseActionController.startAction(
        name: '_StartControllerBase.selectcollapseMenu');
    try {
      return super.selectcollapseMenu();
    } finally {
      _$_StartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
collapseMenu: ${collapseMenu}
    ''';
  }
}
