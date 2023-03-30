import 'package:flutter/material.dart';
import 'package:flutterriverpod/futureprovider/faturedata_screen.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WetherScreen(),
                  ));
            },
            child: const Text('FutureProvider')),
      ),
    );
  }
}
