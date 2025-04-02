import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image Loading')),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          crossAxisCount: 2,
        ),
        itemCount: 100,
        itemBuilder:
            (context, index) => Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKItMltUGbcNq880aED2fF4jOYFueSOgea0A&s",
              errorBuilder:
                  (context, error, stackTrace) => CircularProgressIndicator(
                    color: Colors.white,
                    backgroundColor: Colors.black,
                  ),
            ),
      ),
    );
  }
}
