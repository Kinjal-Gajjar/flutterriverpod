import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'dummy_data.dart';

//Todo:autoDispose using for not caching data
final futureprovider = FutureProvider.autoDispose((ref) => fetchWether());

class WetherScreen extends ConsumerWidget {
  const WetherScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('builds');

    return Scaffold(
      appBar: AppBar(
        title: const Text('wether data'),
      ),
      body: Center(
        child: ref.watch(futureprovider).when(
          data: (data) {
            return Text(data);
          },
          error: (error, stackTrace) {
            return Text(error.toString());
          },
          loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
