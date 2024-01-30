import 'package:exam_adfd/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



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
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MainPage(),
        debugShowCheckedModeBanner: false
    );
  }
}
Future<List<String>> getAllPlaces() async {
  final response = await http.get(Uri.parse('http://localhost:8080/getAllPlace'));
  if (response.statusCode == 200) {
    final List<dynamic> data = jsonDecode(response.body);
    return data.cast<String>().toList();
  } else {
    throw Exception('Failed to load places');
  }
}