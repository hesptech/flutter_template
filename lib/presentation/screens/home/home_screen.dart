import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/presentation/providers/type_provider.dart';
import '/presentation/widgets/type_property.dart';
import '/presentation/widgets/side_menu.dart';
import '../screens.dart';

class HomeScreen extends ConsumerWidget {

  static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final scaffoldKey = GlobalKey<ScaffoldState>(); 
    final String typePropertyState = ref.watch( typeProvider ); 

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        elevation: 10,
        title: const Text('Clean Architecture Template'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const TypeProperty(),
          const SizedBox( height: 50.0 ),
          const Text('HOME'),

          Text('state: $typePropertyState'),

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
      ),
      drawer: SideMenu(scaffoldKey: scaffoldKey,),
    );
  }
}