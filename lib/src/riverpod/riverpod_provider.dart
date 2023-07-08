import 'package:flutter_state_management/src/enums/status.dart';
import 'package:riverpod/riverpod.dart';

class RiverpodProvider extends StateNotifier<Status> {
  RiverpodProvider() : super(Status.initial);

  Future<void> fetchData() async {
    state = Status.loading;

    await Future.delayed(const Duration(seconds: 2));

    state = Status.success;
  }
}

final riverpodProvider =
    StateNotifierProvider.autoDispose((ref) => RiverpodProvider());
