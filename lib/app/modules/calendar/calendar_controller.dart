import 'package:mobx/mobx.dart';
import 'package:table_calendar/table_calendar.dart';

part 'calendar_controller.g.dart';

class MyCalendarController = _CalendarControllerBase with _$MyCalendarController;

abstract class _CalendarControllerBase with Store {
  @observable
  CalendarController tableCalendarController = CalendarController();
  @observable
  bool expandedCalendar = false;
  @observable
  DateTime selectedDay = DateTime.now();
  @action
  void selectDay(DateTime day) {
    selectedDay = day;
  }

  @action
  void calendarFormatChange() {
    expandedCalendar = !expandedCalendar;
    tableCalendarController.toggleCalendarFormat();
  }

  @observable
  ObservableMap<DateTime, List<dynamic>> events = {DateTime(2000): []}.asObservable();

  @action
  void addToMapEvents(DateTime date, dynamic event) {
    if (!events.containsKey(DateTime(2020, 08, 13))) {
      events.putIfAbsent(DateTime(2020, 08, 13), () => [event]).asObservable();
    } else {
      events[DateTime(2020, 08, 13)].add('Novo Evento');
    }
    print(events);
  }

  @observable
  String eventDescription = '';

  @action
  void eventDescriptionText(String eventDescriptionText) {
    eventDescription = eventDescriptionText;
  }
}
