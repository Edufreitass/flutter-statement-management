import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_management/src/enums/status.dart';
import 'package:flutter_state_management/src/riverpod/riverpod_provider.dart';

class HomeRiverpod extends ConsumerWidget {
  const HomeRiverpod({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.read(riverpodProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Riverpod Page')),
      body: Consumer(
        builder: (context, ref, child) {
          final state = ref.watch(riverpodProvider);
          if (state == Status.initial) {
            return const Center(child: Text('Press the Button'));
          }
          if (state == Status.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state == Status.success) {
            return const Center(child: Text('Success'));
          }
          return Container();
        },
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: const Icon(Icons.play_arrow),
            onPressed: () => data.fetchData(),
          )
        ],
      ),
    );
  }
}
