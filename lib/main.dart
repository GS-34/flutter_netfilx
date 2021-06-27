import 'package:flutter/material.dart';
import 'package:flutter_netflix/screen/home_screen.dart';
import 'package:flutter_netflix/screen/more_screen.dart';
import 'package:flutter_netflix/screen/search_screen.dart';
import 'package:flutter_netflix/widget/bottomBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TabController controller;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BBongFlix',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        accentColor: Colors.white
      ),
      home: DefaultTabController(
          length: 4,
          child: Scaffold(
            body: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                HomeScreen(),
                SearchScreen(),
                Container(child: Center(child: Text('save'),),),
                MoreScreen(),
              ],),
            bottomNavigationBar: BottomBar(),
          )),
    );
  }
}
