import 'package:flutter/material.dart';
import 'package:kuis_e_123190057/list_hotel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'List Hotel',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ListHotel(),
    );
  }
}

