import 'package:flutter/material.dart';
import './firstpage.dart' as firstpage;
import './secondpage.dart' as secondpage;
import './thirdpage.dart' as thirdpage;


void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tabs app'),
          backgroundColor: Colors.red,

        ),
        bottomNavigationBar: Material(
            color: Colors.red,
            child: TabBar(
              controller: controller,
              tabs: <Widget>[

                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.pie_chart)),
//              Tab(icon: Icon(Icons.people)),

              ],
            )
        ),

        body:


        TabBarView(
          controller: controller,
          children: <Widget>[
            firstpage.FirstPage(),
            secondpage.SecondPage(),
//            thirdpage.ThirdPage(),


          ],
        )
    );
  }
}