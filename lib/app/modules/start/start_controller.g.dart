// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StartController on _StartControllerBase, Store {
  final _$isCollapsedAtom = Atom(name: '_StartControllerBase.isCollapsed');

  @override
  bool get isCollapsed {
    _$isCollapsedAtom.reportRead();
    return super.isCollapsed;
  }

  @override
  set isCollapsed(bool value) {
    _$isCollapsedAtom.reportWrite(value, super.isCollapsed, () {
      super.isCollapsed = value;
    });
  }

  final _$currentSelectedIndexAtom =
      Atom(name: '_StartControllerBase.currentSelectedIndex');

  @override
  int get currentSelectedIndex {
    _$currentSelectedIndexAtom.reportRead();
    return super.currentSelectedIndex;
  }

  @override
  set currentSelectedIndex(int value) {
    _$currentSelectedIndexAtom.reportWrite(value, super.currentSelectedIndex,
        () {
      super.currentSelectedIndex = value;
    });
  }

  final _$_StartControllerBaseActionController =
      ActionController(name: '_StartControllerBase');

  @override
  void changeCollapse() {
    final _$actionInfo = _$_StartControllerBaseActionController.startAction(
        name: '_StartControllerBase.changeCollapse');
    try {
      return super.changeCollapse();
    } finally {
      _$_StartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeSelectedIndex(dynamic v) {
    final _$actionInfo = _$_StartControllerBaseActionController.startAction(
        name: '_StartControllerBase.changeSelectedIndex');
    try {
      return super.changeSelectedIndex(v);
    } finally {
      _$_StartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isCollapsed: ${isCollapsed},
currentSelectedIndex: ${currentSelectedIndex}
    ''';
  }
}
