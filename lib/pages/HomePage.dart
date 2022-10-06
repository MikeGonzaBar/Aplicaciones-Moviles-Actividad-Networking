import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            MaterialButton(
              color: Colors.grey[700],
              onPressed: () {},
              child: Text(
                "Leer posts",
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.grey[700],
              onPressed: () {},
              child: Text("Crear nuevo post",
                  style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}