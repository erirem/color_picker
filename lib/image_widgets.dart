import 'package:flutter/material.dart';

class ImageWidgets extends StatelessWidget {
  const ImageWidgets({super.key});
  final String url =
      "https://global.discourse-cdn.com/auth0/original/3X/e/c/ec121d8cfbeb56e6cb593e3eb98876890c73b37e.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Image Widgets")),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 300,
                    height: 300,
                    color: Colors.blue,
                    child: Image.asset(
                      "assets/images/flutter.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 300,
                    height: 300,
                    color: Colors.blue,
                    child: Image.network(url, fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            Expanded(
              child: FadeInImage.assetNetwork(
                fit: BoxFit.cover,
                placeholder: "assets/images/flutter.jpg",
                image: url,
              ),
            ),
            Expanded(child: Placeholder(color: Colors.amber)),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/flutter.jpg"),
                      radius: 100,
                    ),
                  ),
                  Expanded(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(url),
                      radius: 100,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
