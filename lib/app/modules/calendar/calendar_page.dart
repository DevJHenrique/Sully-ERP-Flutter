import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:sully/app/shared/theme.dart';
import 'package:table_calendar/table_calendar.dart';
import 'calendar_controller.dart';

class CalendarPage extends StatefulWidget {
  final String title;
  const CalendarPage({Key key, this.title = "Calendar"}) : super(key: key);

  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends ModularState<CalendarPage, MyCalendarController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    Intl.defaultLocale = 'pt_BR';
    initializeDateFormatting();
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Material(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
        color: Colors.transparent,
        elevation: 8,
        child: ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text(
                'Calendário',
                style: titleStyle,
              ),
            ),
            body: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  TableCalendar(
                    events: controller.events,
                    onDaySelected: (data, content) {
                      controller.selectDay(data);
                    },
                    availableCalendarFormats: const {CalendarFormat.month: 'Month', CalendarFormat.week: 'Week'},
                    initialCalendarFormat: CalendarFormat.week,
                    calendarStyle: CalendarStyle(
                      contentPadding: const EdgeInsets.only(left: 2.0, right: 2.0),
                      todayColor: unSelectedColor,
                      selectedColor: selectedColor,
                    ),
                    calendarController: controller.tableCalendarController,
                    headerStyle: HeaderStyle(
                      centerHeaderTitle: true,
                      formatButtonVisible: false,
                      titleTextBuilder: (date, locale) => DateFormat.yMMMM(locale).format(date),
                    ),
                  ),
                  Observer(builder: (_) {
                    return IconButton(
                      onPressed: () {
                        setState(() {
                          controller.calendarFormatChange();
                        });
                      },
                      icon: controller.expandedCalendar ? Icon(Icons.arrow_drop_up) : Icon(Icons.arrow_drop_down),
                    );
                  }),
                  Expanded(
                    child: ListView.builder(
                      itemCount: controller.tableCalendarController.visibleEvents.length,
                      itemBuilder: (context, index) {
                        return ListTile();
                      },
                    ),
                  )
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              elevation: 2,
              onPressed: () async {
                controller.addToMapEvents(controller.selectedDay, "event");
                setState(() {});
                // _showAddDialog();
              },
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
              backgroundColor: selectedColor,
            ),
          ),
        ),
      ),
    );
  }

  _showAddDialog() async {
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: TextField(
          onChanged: controller.eventDescriptionText,
        ),
        actions: <Widget>[
          FlatButton(
            child: Text("Save"),
            onPressed: () {
              // controller.events.map((controller., value) => null);
              //Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
