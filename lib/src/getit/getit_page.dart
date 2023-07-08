import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'getit_provider.dart';
import 'home_getit.dart';

class GetItPage extends StatefulWidget {
  static const route = 'get-it-page';

  const GetItPage({super.key});

  @override
  State<GetItPage> createState() => _GetItPageState();
}

class _GetItPageState extends State<GetItPage> {
  @override
  void initState() {
    // At your start-up you register all the objects
    // you want to access later like this:
    GetIt.I.registerSingleton<GetItProvider>(GetItProvider());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HomeGetIt();
  }
}