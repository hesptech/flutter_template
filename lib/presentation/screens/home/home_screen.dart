import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {

  static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Clean Architecture Template'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('HOME'),

            FilledButton(
              onPressed: () {
                context.push('/gallery');
              },
              child: const Text('GALLERY'),
            ),

            FilledButton(
              onPressed: () {
                context.go('/auth');
              },
              child: const Text('go AUTHENTICATION'),
            ),

            FilledButton(
              onPressed: () {
                context.pushNamed(AuthScreen.name);
              },
              child: const Text('pushName AUTHENTICATION'),
            ),

          ],
        )
      ),
    );
  }
}