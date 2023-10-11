import 'package:flutter/material.dart';
import 'tp1/tp1.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar:AppBar(

          title: Text(
            'Flutter tp1'
          ),
        ),
        body:CounterApp()
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

