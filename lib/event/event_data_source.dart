
import 'dart:ui';
import 'package:event_manager/event/event_model.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class EventDataSource extends CalendarDataSource {
  EventDataSource(List<EventModel> source) {
    appointments = source;
  }
  @override
  DateTime getStartTime(int index) {
    EventModel item = appointments!.elementAt(index);
    return item.startTime;
  }

  @override
  DateTime getEndTime(int index) {
    EventModel item = appointments!.elementAt(index);
    return item.endTime;
  }

  @override
  String getSubject(int index) {
    EventModel item = appointments!.elementAt(index);
    return item.subject;
  }

  @override
  String? getNotes(int index) {
    EventModel item = appointments!.elementAt(index);
    return item.notes;
  }

  @override
  String? getRecurrenceRule(int index) {
    EventModel item = appointments!.elementAt(index);
    return item.recurrenceRule;
  }

  @override
  bool isAllDay(int index) {
    EventModel item = appointments!.elementAt(index);
    return item.isAllDay;
  }

  @override
  Color getColor(int index) {
    EventModel item = appointments!.elementAt(index);
    return item.isAllDay ? const Color(0xFF0F8644) : super.getColor(index);
  }
}
