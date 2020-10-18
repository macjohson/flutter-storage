import 'package:flutter/material.dart';
import 'dart:async';
import 'package:storage/storage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    getDir();
    super.initState();
  }

  Future<void> getDir() async{
    final a = await Storage.documentDir;
    print(a);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('storage test'),
        ),
      ),
    );
  }
}
