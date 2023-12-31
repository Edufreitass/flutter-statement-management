import 'package:flutter/material.dart';
import 'package:flutter_state_management/src/bloc/bloc_page.dart';
import 'package:flutter_state_management/src/getit/getit_page.dart';
import 'package:flutter_state_management/src/getx/getx_page.dart';
import 'package:flutter_state_management/src/mobx/mobx_page.dart';
import 'package:flutter_state_management/src/riverpod/riverpod_page.dart';

import 'src/provider/provider_page.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: ProviderPage(),
      // home: BlocPage(),
      // home: GetxPage(),
      // home: RiverpodPage(),
      // home: GetItPage(),
      home: MobXPage(),
    );
  }
}
