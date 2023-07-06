import 'package:flutter/material.dart';
import 'package:flutter_state_management/src/provider/data_provider.dart';
import 'package:provider/provider.dart';

import 'home_provider.dart';

class ProviderPage extends StatelessWidget {
  static const route = 'provider-page';

  const ProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataProvider(),
      child: const HomeProvider(),
    );
  }
}
