import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {

  static const String name = 'gallery_screen';

  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.collections),
            SizedBox(width: 15.0,),
            Text('page gallery'),
            SizedBox(width: 52.0,),
          ],
        ),
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
