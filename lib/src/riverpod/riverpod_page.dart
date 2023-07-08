import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'home_riverpod.dart';

class RiverpodPage extends StatelessWidget {
  static const route = 'riverpod-page';

  const RiverpodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: HomeRiverpod(),
    );
  }
}