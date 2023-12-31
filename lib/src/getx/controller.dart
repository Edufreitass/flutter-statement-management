import 'package:flutter_state_management/src/enums/status.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  // Getx is reactive, so when a variable changes,
  // it will automatically change on the screen.
  // You just need to add a ".obs" in front of your variable,
  // and that's it, it's already reactive.
  var state = Status.initial.obs;

  // Update State of the Controller. This is the only way to modify the
  // Controller from the outside.
  void fetchData() async {
    state.value = Status.loading;
    // update();

    await Future.delayed(const Duration(seconds: 2));

    state.value = Status.success;
  }
}
