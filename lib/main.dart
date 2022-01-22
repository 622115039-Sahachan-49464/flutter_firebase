import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/screen/display.dart';

import 'screen/formscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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

  @override
  void initState() {
    super.initState();
    Firebase.initializeApp().whenComplete(() {
      setState((){});
    });
  }
  @override
  Widget build(BuildContext context) {
      return DefaultTabController(
        length: 2,
        child: Scaffold(
          body: TabBarView(
            children: [
              FormScreen(),
              DisplayScreen()
            ],
            ),
            backgroundColor: Colors.blue,
            bottomNavigationBar: TabBar(
              tabs: [
                Tab(text: "บันทึกคะแนนสอบ",),
                Tab(text: "รายชื่อนักเรียน",)
              ],
              ),
        ),
      );
  }
}
