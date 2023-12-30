

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/presentation/providers/repliers_listings_provider.dart';

class ListingsScreen extends ConsumerWidget {

  static const String name = 'listings';

  const ListingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    //ref.read(repliersListingsProvider.notifier).getDisplayHouses();
    final listings = ref.watch(repliersListingsProvider);

    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: const Text('listings'),
      ),
      body: ListView.builder(
        itemCount: listings.length,
        itemBuilder: (context, index) {

          final tiles = listings[index];

          return ListTile(
            title: Text(tiles.listDate.toString()),
            subtitle: Text(tiles.listPrice?? ''),
          );
        }
      ),
      /* body: Column(
        children: [
          FilledButton(
            onPressed: () {
              print('button');
              ref.read(repliersListingsProvider.notifier).getDisplayHouses();
            },
            child: const Text('Listings'),
          ),
        ],
      ), */
    );
  }
}