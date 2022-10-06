import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'package:networking/providers/request_provider.dart';
import 'package:provider/provider.dart';


void main() => runApp(ChangeNotifierProvider(
    create: (context) => RequestProvider()..getReqs(), child: const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Material App', home: HomePage());
  }
}
