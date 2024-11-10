import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'countdown_timer_repository.freezed.dart';
part 'countdown_timer_repository.g.dart';

@freezed
class CountdownTimerState with _$CountdownTimerState {
  const CountdownTimerState._();
  const factory CountdownTimerState({
    required bool isRunning,
    required Duration interval,
    required Duration current,
    required Timer? timer,
  }) = _CountdownTimerState;
}

@riverpod
class CountdownTimerRepository extends _$CountdownTimerRepository {
  @override
  CountdownTimerState build({
    required Duration initial,
    required Duration interval,
  }) {
    ref.onDispose(() {
      state.timer?.cancel();
    });
    return CountdownTimerState(
      isRunning: false,
      interval: interval,
      current: initial,
      timer: null,
    );
  }

  void start() {
    if (state.isRunning) return;
    state = state.copyWith(isRunning: true, timer: _createTimer());
  }

  void stop() {
    if (!state.isRunning) return;
    state.timer?.cancel();
    state = state.copyWith(isRunning: false, timer: null);
  }

  Timer _createTimer() {
    return Timer.periodic(state.interval, _onTick);
  }

  void _onTick(Timer timer) {
    if (!state.isRunning) return;
    final current = state.current - state.interval;
    final isOver = current.compareTo(Duration.zero) < 0;
    if (isOver) {
      state.timer?.cancel();
      state = state.copyWith(current: Duration.zero, timer: null);
    } else {
      state = state.copyWith(current: current);
    }
  }
}
