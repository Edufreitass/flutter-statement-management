import 'package:flutter/material.dart';
import 'package:flutter_state_management/src/enums/status.dart';
import 'package:flutter_state_management/src/provider/data_provider.dart';
import 'package:provider/provider.dart';

class HomeProvider extends StatefulWidget {
  const HomeProvider({super.key});

  @override
  State<HomeProvider> createState() => _HomeProviderState();
}

class _HomeProviderState extends State<HomeProvider> {
  late DataProvider provider;

  @override
  void initState() {
    provider = Provider.of<DataProvider>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Provider Page')),
      // It is best practice to put your Consumer widgets as deep in the tree as possible.
      // You don't want to rebuild large portions of the UI just because some detail somewhere changed.
      body: Consumer<DataProvider>(
        builder: (context, data, child) {
          if (data.state == Status.initial) {
            return const Center(child: Text('Press the Button'));
          }
          if (data.state == Status.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (data.state == Status.success) {
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
            onPressed: () => provider.fetchData(),
          ),
        ],
      ),
    );
  }
}
