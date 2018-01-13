import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:json_viewer/json_viewer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    this.jsoObj = json.decode('{"menu": {'
        '  "id": 123456,'
        '  "success": false,'
        '  "value": "File",'
        '  "popup": {'
        '    "menuitem": ['
        '      {"value": "New", "onclick": "CreateNewDoc()"},'
        '      {"value": "Open", "onclick": "OpenDoc()"},'
        '      {"value": "Close", "onclick": "CloseDoc()"}'
        '    ]'
        '  },'
        '  "popup2": {'
        '    "menuitem": ['
        '      {"value": "New", "onclick": "CreateNewDoc()"},'
        '      {"value": "Open", "onclick": "OpenDoc()"},'
        '      {"value": "Close", "onclick": "CloseDoc()"}'
        '    ]'
        '  }'
        '}}');
  }

  dynamic jsoObj;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: JsonViewerRoot(jsonObj: this.jsoObj),
          ),
        ),
      ),
    );
  }
}
