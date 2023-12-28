import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthScreen extends StatelessWidget {

  static const String name = 'auth_screen';

  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('AUTHENTICATION'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
          const Text('AUTHENTICATION'),

          FilledButton(
            onPressed: () {
              context.go('/');
            },
            child: const Text('go HOME'),
          ),

          ],
        ),
      ),
    );
  }
}