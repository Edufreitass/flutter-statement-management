import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_management/src/bloc/data_bloc.dart';

import 'home_bloc.dart';

class BlocPage extends StatelessWidget {
  static const route = 'bloc-page';

  const BlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DataBloc(),
      child: const HomeBloc(),
    );
  }
}
