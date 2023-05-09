import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime today = DateTime.now(); //Variable that captures the current date
  void _onDaySelected(DateTime day,DateTime focusedDay){
    setState(() {
      today = day;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("The Timesheet log calender")),
      body: content(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

Widget content() {
  var today;
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      children: [
        Text("NUST_STAFF"),
        Text("Selected Day = "+today.toString().split(" ")[0]),
        Container(
          child: TableCalendar(
              locale: "en-US",
              rowHeight: 43, // between each day
              headerStyle: HeaderStyle(formatButtonVisible: false,titleCentered: true),
                availableGestures: AvailableGestures.all,
              selectedDayPredicate: (day)=>isSameDay(day, DateTime.now()),
              focusedDay: DateTime.now(), //the day focused on when navigating the calendar
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              onDaySelected: _onDaySelected,
          ),
        ),
      ],
    ),
  );
}

void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
}
