import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'package:provider/provider.dart';

import 'providers/request_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MaterialApp',
        home: ChangeNotifierProvider(
          create: (context) => RequestProvider()..getReqs(),
          child: HomePage(),
        ));
  }
}
