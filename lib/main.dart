import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stopwatch_app/constants.dart';
import 'package:stopwatch_app/features/session/session_time_page.dart';
import 'package:stopwatch_app/features/timer/countdown_timer_page.dart';
import 'package:stopwatch_app/repositories/session_time_repository.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'カウントダウンタイマー',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CountdownApp(),
    );
  }
}

class CountdownApp extends HookConsumerWidget {
  const CountdownApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myTime = ref.watch(sessionTimeRepositoryProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('カウントダウンタイマー'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SessionTimePage(),
            CountdownTimerPage(startTime: myTime == 0 ? sessionTime : ltTime),
          ],
        ),
      ),
    );
  }
}
