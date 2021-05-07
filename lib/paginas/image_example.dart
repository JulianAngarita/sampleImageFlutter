import 'package:flutter/material.dart';

class ImagesExample extends StatelessWidget {

  @override
  Widget build( BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: Container(
        child: Column(
          children: [
            Image.network(
              "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
            )
          ],
        ),
      ),
    );
  }
}