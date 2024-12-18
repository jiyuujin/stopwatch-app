import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stopwatch_app/repositories/countdown_timer_repository.dart';

class CountdownTimerPage extends HookConsumerWidget {
  const CountdownTimerPage(
      {super.key, required this.startTime, required this.timer});

  final int startTime;
  final CountdownTimerRepositoryProvider timer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTime = ref.watch(timer.select((value) => value.current));
    final isRunning = ref.watch(timer.select((value) => value.isRunning));

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          currentTime.toString(),
          style: TextStyle(
            fontSize: 48,
            color: isRunning && currentTime.inSeconds < 0
                ? Colors.red
                : Colors.black,
          ),
        ),
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
            if (isRunning) {
              ref.read(timer.notifier).stop();
            } else {
              ref.read(timer.notifier).start();
            }
          },
        ),
      ],
    );
  }
}
