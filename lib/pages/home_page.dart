import 'package:flutter/material.dart';
import 'package:networking/pages/get_page.dart';
import 'package:networking/pages/post_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            MaterialButton(
              color: Colors.grey[700],
              onPressed: () {
                Navigator.of(context).push(
                  (MaterialPageRoute(
                    builder: (context) => const GetPage(),
                  )),
                );
              },
              child: const Text(
                "Leer posts",
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.grey[700],
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const PostPage()));
              },
              child: const Text("Crear nuevo post",
                  style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
