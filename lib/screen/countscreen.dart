import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterriverpod/screen/counterprovider.dart';


//todo: Using state provider

// final counter = StateProvider((ref) => 0);
final counterProvider =
    StateNotifierProvider<CounterProvider, int>((ref) => CounterProvider());

class CountScreen extends ConsumerStatefulWidget {
  const CountScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CountScreenState();
}

class _CountScreenState extends ConsumerState<CountScreen> {
  @override
  Widget build(BuildContext context) {
    print('builds');
    // ref.listen(counter, (preives, next) {
    //   if (next == 5) {
    //     ScaffoldMessenger.of(context)
    //         .showSnackBar(SnackBar(content: Text('The value is $next ')));
    //   }
    // });
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
        actions: [
          IconButton(
              onPressed: () {
                // ref.invalidate(counter);
                // ref.refresh(counter);
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: Center(
        child: Text(ref.watch(counterProvider).toString()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).increment();
          // ref.watch(counter.notifier).update((state) => state++);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
