import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:networking/providers/request_provider.dart';
import 'package:provider/provider.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    final userIdTextController = TextEditingController();
    final titleTextController = TextEditingController();
    final contentTextController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(40, 100, 40, 40),
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
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MaterialButton(
                        color: Colors.indigo,
                        onPressed: () {
                          userIdTextController.clear();
                          titleTextController.clear();
                          contentTextController.clear();
                        },
                        child: const Text(
                          "Limpiar todo",
                          style: TextStyle(color: Colors.white),
                        )),
                    MaterialButton(
                        color: Colors.indigo,
                        onPressed: () async {
                          dynamic data = {
                            "title": titleTextController.text,
                            "body": contentTextController.text,
                            "userId": userIdTextController.text
                          };

                          await context.read<RequestProvider>().postToAPI(data);
                        },
                        child: const Text(
                          "Postear",
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Response:\n"),
                    Text(
                      context.watch<RequestProvider>().responseBodyToShow,
                      style: const TextStyle(
                        fontFeatures: [FontFeature.tabularFigures()],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
