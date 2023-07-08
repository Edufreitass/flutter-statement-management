import 'package:flutter/material.dart';
import 'package:flutter_state_management/src/enums/status.dart';
import 'package:flutter_state_management/src/getit/getit_provider.dart';
import 'package:get_it_mixin/get_it_mixin.dart';

class HomeGetIt extends StatelessWidget with GetItMixin {
  HomeGetIt({super.key});

  @override
  Widget build(BuildContext context) {
    // You could tell your view to rebuild
    // any time state changes with a simple call to watchOnly:
    final state =
        watchOnly((GetItProvider getItProvider) => getItProvider.state);

    return Scaffold(
      appBar: AppBar(title: const Text('GetIt Page')),
      body: Builder(
        builder: (context) {
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
            // After that you can access your GetItProvider class
            // from anywhere like this:
            onPressed: () => get<GetItProvider>().fecthData(),
          ),
        ],
      ),
    );
  }
}
