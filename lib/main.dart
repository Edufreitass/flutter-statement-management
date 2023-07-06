import 'package:flutter/material.dart';

import 'src/provider/provider_page.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProviderPage(),
    );
  }
}
