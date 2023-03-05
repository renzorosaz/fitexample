import 'package:flutter/material.dart';
import 'package:ux1_fitness/widgets/routine_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContextcontext) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(body: RoutinePage()),
    );
  }
}
