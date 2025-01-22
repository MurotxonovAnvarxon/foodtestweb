import 'package:flutter/material.dart';
import 'package:foodtestweb/my_bloc.dart';
import 'package:foodtestweb/screens/main_screen.dart';
import 'package:foodtestweb/util/const.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      theme: Constants.lightTheme,
      darkTheme: Constants.darkTheme,
      home: BlocProvider(
        create: (context) => MyBloc(),
        child: MainScreen(),
      ),
    );
  }
}
