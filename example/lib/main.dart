import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ios_in_app_updater/flutter_ios_in_app_updater.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _flutterIosInAppUpdaterPlugin = FlutterIosInAppUpdater();

  @override
  void initState() {
    super.initState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    await _flutterIosInAppUpdaterPlugin.openAppStore("1450368607");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () async {
                initPlatformState();
              },
              child: const Text("Update")),
        ),
      ),
    );
  }
}
