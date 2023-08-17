import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {

  static const String name = 'gallery_screen';

  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('page gallery'),
        centerTitle: true,
      ),
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: const Center(
          child: Text('page gallery'),
        ),
      ),
    );
  }
}
