import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp1/demos.dart';
import 'package:myapp1/ex1.dart';
import 'package:myapp1/image_learn.dart';
import 'package:myapp1/padding_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: Colors.transparent,
        elevation: 0,
      )),
      home: NoteDemos(),
    );
  }
}
