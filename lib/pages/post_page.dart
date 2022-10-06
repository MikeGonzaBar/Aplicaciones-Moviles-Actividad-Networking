import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:networking/providers/request_provider.dart';
import 'package:provider/provider.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userIdTextController = TextEditingController();
    final titleTextController = TextEditingController();
    final contentTextController = TextEditingController();

    var responseBodyToRead = "Response body del request";

    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(40, 100, 40, 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: userIdTextController,
              decoration: const InputDecoration(hintText: "User Id"),
            ),
            TextField(
              controller: titleTextController,
              decoration: const InputDecoration(hintText: "Title"),
            ),
            TextField(
              controller: contentTextController,
              decoration: const InputDecoration(hintText: "Content"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                    color: Colors.blue,
                    onPressed: () {
                      userIdTextController.clear();
                      titleTextController.clear();
                      contentTextController.clear();
                    },
                    child: const Text("Limpiar todo")),
                MaterialButton(
                    color: Colors.blue,
                    onPressed: () async {
                      var data;
                      data.title = titleTextController.text;
                      data.body = contentTextController.text;
                      data.userId = userIdTextController.text;
                      var response = await data.context
                          .read<RequestProvider>()
                          .postToAPI(data);
                    },
                    child: const Text("Postear")),
              ],
            ),
            Text(
              responseBodyToRead,
              style: const TextStyle(
                fontFeatures: [FontFeature.tabularFigures()],
              ),
            )
          ],
        ),
      ),
    );
  }
}
