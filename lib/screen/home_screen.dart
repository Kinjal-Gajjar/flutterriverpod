import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final stringProvider = Provider((ref) => 'Hello world');

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final string=ref.read(stringProvider);
    return Scaffold(
      body: Center(
      child:  Text(string)
      ),
    );
  }
}
