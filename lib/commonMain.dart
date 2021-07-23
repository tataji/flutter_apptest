import 'package:flutter/material.dart';

import 'constants.dart';

void mainDelegate() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Build env - ${Constants.WHERE_AM_I}',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Build env - ${Constants.WHERE_AM_I}'),
          ),
          body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Build env - ${Constants.WHERE_AM_I}',),
                  Divider(),
                  Text("Server 1: ${Constants.SERVER_ONE}"),
                  Divider(),
                  Text("Server 2: ${Constants.SERVER_TWO}"),
                  Divider(),
                  Constants.WHERE_AM_I == "prod"
                      ? Text("OMG! Such a prod!")
                      : Text("You're still testing man!"),
                ],
              ))),
      debugShowCheckedModeBanner: false,
    );
  }
}