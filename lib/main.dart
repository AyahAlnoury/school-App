import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school/cubits/home_cubit.dart';
import 'package:school/pages/login_page.dart';
import 'package:school/states/homestate.dart';

void main() {
  // debugShowCheckedModeBanner:
  // false;

  runApp(
    BlocProvider<HomeCubite>(
        create: (context) => HomeCubite(HomeInitState()), child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "Almarai",
        ),
        home: LoginPage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

@override
State<MyHomePage> createState() => _MyHomePageState();

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
