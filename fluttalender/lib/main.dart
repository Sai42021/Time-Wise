import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(//To set the sfcalendar to its body
      body: SfCalendar(
        view: CalendarView.week,//you can change this view to display a month, week, day
        firstDayOfWeek: 1,//Monday should be the first day of the week
        //initialDisplayDate: DateTime(2023, 05, 22, 08, 30),
        //initialSelectedDate: DateTime(2023, 05, 22, 08, 30),
        dataSource: MeetingDataSource(getAppointments())
      ),//SfCalendar
    );
  }

}

List<Appointment> getAppointments(){
  List<Appointment> meetings = <Appointment>[];
  final DateTime today = DateTime.now();
  final DateTime startTime =
        DateTime(today.year, today.month, today.day, 9, 0, 0);
  final DateTime endTime = startTime.add(const Duration(hours: 3)); //the appointment will end after 3 hourS

  meetings.add(Appointment(
    startTime: startTime,
    endTime: endTime,
    subject: 'MAP Marks Consolidation'
      color: Colors.cyanAccent
    recurrenceRule: 'FREQ=DAILY;COUNT=4'//Appointment repeated for following 4 days
    isAllDay: true)); //appointment set for the whole day

  return meetings;
}

class MeetingDataSource extends CalendarDataSource{
  MeetingDataSource(List<Appointment> source) {
    appointments = source;

  }

}
