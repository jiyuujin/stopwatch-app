import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stopwatch_app/constants.dart';
import 'package:stopwatch_app/repositories/countdown_timer_repository.dart';

class CountdownTimerPage extends HookConsumerWidget {
  const CountdownTimerPage({super.key, required this.startTime});

  final int startTime;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myTimer = countdownTimerRepositoryProvider(
      initial: Duration(seconds: startTime * 60),
      interval: const Duration(milliseconds: milliSec),
    );

    final currentTime = ref.watch(myTimer.select((value) => value.current));
    final isRunning = ref.watch(myTimer.select((value) => value.isRunning));

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(currentTime.toString(), style: const TextStyle(fontSize: 48)),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(120),
          ),
          child: Text(
            isRunning ? '停止' : '開始',
            style: const TextStyle(fontSize: 30),
          ),
          onPressed: () {
            if (ref.watch(myTimer.select((value) => value.isRunning))) {
              ref.read(myTimer.notifier).stop();
            } else {
              ref.read(myTimer.notifier).start();
            }
          },
        ),
      ],
    );
  }
}
