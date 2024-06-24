import 'package:flutter/material.dart';
import 'lottie_view.dart';

class LottieGallery extends StatelessWidget {
  final List<String> lottieFiles = [
    "assets/lottie/celebration.json",
    "assets/lottie/loading_character(typing)_5sec.json",
    "assets/lottie/loading_character(typing)_3sec.json",
    "assets/lottie/loading_circle.json",
    "assets/lottie/icon_ok.json",
  ];

  String _extractFileName(String filePath) {
    return filePath.split('/').last.split('.').first.replaceAll('_', ' ');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lottie Gallery'),
      ),
      body: ListView.builder(
        itemCount: lottieFiles.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_extractFileName(lottieFiles[index])),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LottieView(filePath: lottieFiles[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
