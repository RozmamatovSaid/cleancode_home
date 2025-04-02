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
              "https://3.hdqwalls.com/wallpapers/skye-united-kingdom-8k-yh.jpg",
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
