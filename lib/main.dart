import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Home.dart';
import 'MyCard.dart';
import 'lang_view.dart';


void main(){
  runApp(

      EasyLocalization(

          supportedLocales: [Locale('en', 'US'), Locale('ar', 'DZ')],
          path: 'assets/translations',
          fallbackLocale: Locale('en', 'US'),
          child: MyApp())
  );
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,

      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MytabBar(),
    );
  }
}
class MytabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,

            actions: <Widget>[
              FlatButton(
                child: Icon(Icons.language,
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => LanguageView(), fullscreenDialog: true),
                  );
                },
              )
            ],

            title: Text("title").tr(),
            bottom: TabBar(
              tabs: [
                Tab(text: "first",),
                Tab(text: "second",),
                // Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),

          ),
          body: TabBarView(
            children: [
              MyHomePage(),
              Container()
              // Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}








