import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

void main() => runApp(new MyApp());

// Model: Post
class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}

// Service: fetchPost
Future<Post> fetchPost() async {
  final url = 'https://jsonplaceholder.typicode.com/posts/1';
  final response = await http.get(url);

  if (response.statusCode == 200) {
    final jsonBody = json.decode(response.body);
    return Post.fromJson(jsonBody);
  } else {
    throw Exception('Failed to load post');
  }
}

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
