import 'package:flutter/material.dart';
import 'package:networking/pages/post_page.dart';

import 'pages/HomePage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: PostPage());
  }
}
