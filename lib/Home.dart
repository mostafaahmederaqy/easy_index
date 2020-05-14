import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'MyCard.dart';
import 'lang_view.dart';
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body:Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: <Widget>[
            MyCard(),
            MyCard(),
            MyCard(),
          ],
        ),
      ),// T
    );
  }
}