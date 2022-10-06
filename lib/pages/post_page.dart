import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userIdTextController = TextEditingController();
    final titleTextController = TextEditingController();
    final contentTextController = TextEditingController();

    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(40, 100, 40, 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: userIdTextController,
              decoration: InputDecoration(hintText: "User Id"),
            ),
            TextField(
              controller: titleTextController,
              decoration: InputDecoration(hintText: "Title"),
            ),
            TextField(
              controller: contentTextController,
              decoration: InputDecoration(hintText: "Content"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                    color: Colors.blue,
                    onPressed: () {},
                    child: const Text("Limpiar todo")),
                MaterialButton(
                    color: Colors.blue,
                    onPressed: () {},
                    child: const Text("Postear")),
              ],
            ),
            Text(
              "Response body del request",
              style: TextStyle(),
            )
          ],
        ),
      ),
    );
  }
}
