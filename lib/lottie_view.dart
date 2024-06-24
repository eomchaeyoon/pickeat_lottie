import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieView extends StatelessWidget {
  final String filePath;

  LottieView({required this.filePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_extractFileName(filePath)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Lottie.asset(filePath),
      ),
    );
  }

  String _extractFileName(String filePath) {
    return filePath.split('/').last.split('.').first.replaceAll('_', ' ');
  }
}
