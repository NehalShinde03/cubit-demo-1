import 'package:cubit_demo1/demo/demo_view.dart';
import 'package:cubit_demo1/temp/temp_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: route,
      initialRoute: DemoView.routeName,
    );
  }

  Map<String, WidgetBuilder> get route => <String, WidgetBuilder>{
    DemoView.routeName:DemoView.builder,
    Tempview.route:Tempview.builder
  };

}

