import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Post Detail Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new PostDetailPage(),
    );
  }
}

class PostDetailPage extends StatefulWidget {
  @override
  _PostDetailPageState createState() => new _PostDetailPageState();
}

class _PostDetailPageState extends State<PostDetailPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Post Detail'),
      ),
      body: new Column(),
    );
  }
}
