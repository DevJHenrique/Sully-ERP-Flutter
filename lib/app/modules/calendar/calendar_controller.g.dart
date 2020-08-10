// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MyCalendarController on _CalendarControllerBase, Store {
  final _$tableCalendarControllerAtom =
      Atom(name: '_CalendarControllerBase.tableCalendarController');

  @override
  CalendarController get tableCalendarController {
    _$tableCalendarControllerAtom.reportRead();
    return super.tableCalendarController;
  }

  @override
  set tableCalendarController(CalendarController value) {
    _$tableCalendarControllerAtom
        .reportWrite(value, super.tableCalendarController, () {
      super.tableCalendarController = value;
    });
  }

  final _$expandedCalendarAtom =
      Atom(name: '_CalendarControllerBase.expandedCalendar');

  @override
  bool get expandedCalendar {
    _$expandedCalendarAtom.reportRead();
    return super.expandedCalendar;
  }

  @override
  set expandedCalendar(bool value) {
    _$expandedCalendarAtom.reportWrite(value, super.expandedCalendar, () {
      super.expandedCalendar = value;
    });
  }

  final _$selectedDayAtom = Atom(name: '_CalendarControllerBase.selectedDay');

  @override
  DateTime get selectedDay {
    _$selectedDayAtom.reportRead();
    return super.selectedDay;
  }

  @override
  set selectedDay(DateTime value) {
    _$selectedDayAtom.reportWrite(value, super.selectedDay, () {
      super.selectedDay = value;
    });
  }

  final _$eventsAtom = Atom(name: '_CalendarControllerBase.events');

  @override
  ObservableMap<DateTime, List<dynamic>> get events {
    _$eventsAtom.reportRead();
    return super.events;
  }

  @override
  set events(ObservableMap<DateTime, List<dynamic>> value) {
    _$eventsAtom.reportWrite(value, super.events, () {
      super.events = value;
    });
  }

  final _$eventDescriptionAtom =
      Atom(name: '_CalendarControllerBase.eventDescription');

  @override
  String get eventDescription {
    _$eventDescriptionAtom.reportRead();
    return super.eventDescription;
  }

  @override
  set eventDescription(String value) {
    _$eventDescriptionAtom.reportWrite(value, super.eventDescription, () {
      super.eventDescription = value;
    });
  }

  final _$_CalendarControllerBaseActionController =
      ActionController(name: '_CalendarControllerBase');

  @override
  void selectDay(DateTime day) {
    final _$actionInfo = _$_CalendarControllerBaseActionController.startAction(
        name: '_CalendarControllerBase.selectDay');
    try {
      return super.selectDay(day);
    } finally {
      _$_CalendarControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void calendarFormatChange() {
    final _$actionInfo = _$_CalendarControllerBaseActionController.startAction(
        name: '_CalendarControllerBase.calendarFormatChange');
    try {
      return super.calendarFormatChange();
    } finally {
      _$_CalendarControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addToMapEvents(DateTime date, dynamic event) {
    final _$actionInfo = _$_CalendarControllerBaseActionController.startAction(
        name: '_CalendarControllerBase.addToMapEvents');
    try {
      return super.addToMapEvents(date, event);
    } finally {
      _$_CalendarControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void eventDescriptionText(String eventDescriptionText) {
    final _$actionInfo = _$_CalendarControllerBaseActionController.startAction(
        name: '_CalendarControllerBase.eventDescriptionText');
    try {
      return super.eventDescriptionText(eventDescriptionText);
    } finally {
      _$_CalendarControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tableCalendarController: ${tableCalendarController},
expandedCalendar: ${expandedCalendar},
selectedDay: ${selectedDay},
events: ${events},
eventDescription: ${eventDescription}
    ''';
  }
}
