import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Date Function'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //String now;
  var date, firstDay, lastDay;
  DateTime now;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Now : $now"),
            SizedBox(
              height: 20,
            ),
            Text('First day of the month :  $firstDay'),
            SizedBox(
              height: 20,
            ),
            Text('Last day of the month :  $lastDay'),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  now = DateTime.now();
                  String formattedDate =
                      DateFormat('yyyy-MM-dd – kk:mm').format(now);

                  print(formattedDate);

                  date = new DateTime.now();
                  firstDay = new DateTime(date.year, date.month, 1);
                  lastDay = new DateTime(date.year, date.month + 1, 0);

                  print(firstDay);
                  print(lastDay);

                  setState(() {});
                },
                child: Text("Submit")),
          ],
        ),
      ),
    );
  }
}
