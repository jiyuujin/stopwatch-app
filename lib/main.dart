import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stopwatch_app/constants.dart';
import 'package:stopwatch_app/features/session/session_time_page.dart';
import 'package:stopwatch_app/features/timer/countdown_timer_page.dart';
import 'package:stopwatch_app/repositories/countdown_timer_repository.dart';
import 'package:stopwatch_app/repositories/custom_session_time_repository.dart';
import 'package:stopwatch_app/repositories/session_type_repository.dart';
import 'package:stopwatch_app/services/particle_animation.dart';

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
    final myTime = ref.watch(sessionTypeRepositoryProvider);
    final myCustomTime = ref.watch(customSessionTimeRepositoryProvider);
    final startTime = myTime == 0
        ? sessionTime
        : myTime == 1
            ? ltTime
            : myCustomTime;

    final timer = countdownTimerRepositoryProvider(
      initial: Duration(seconds: startTime * 60),
      interval: const Duration(milliseconds: milliSec),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('カウントダウンタイマー'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SessionTimePage(
                disabled: ref.watch(timer.select((value) => value.isRunning))),
            CountdownTimerPage(
              startTime: startTime,
              timer: timer,
            ),
            const ParticleAnimation(),
          ],
        ),
      ),
    );
  }
}

class ParticleAnimation extends ConsumerStatefulWidget {
  const ParticleAnimation({super.key});

  @override
  _ParticleAnimationState createState() => _ParticleAnimationState();
}

class _ParticleAnimationState extends ConsumerState<ParticleAnimation> {
  final _controller =
      ConfettiController(duration: const Duration(milliseconds: 500));
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    final myTime = ref.watch(sessionTypeRepositoryProvider);
    final myCustomTime = ref.watch(customSessionTimeRepositoryProvider);
    final startTime = myTime == 0
        ? sessionTime
        : myTime == 1
            ? ltTime
            : myCustomTime;

    final timer = countdownTimerRepositoryProvider(
      initial: Duration(seconds: startTime * 60),
      interval: const Duration(milliseconds: milliSec),
    );

    ref.listen<Duration>(timer.select((value) => value.current),
        (Duration? previous, Duration next) {
      if (next == Duration.zero) {
        // _controller.play();
        player.setSource(AssetSource('bell.mp3')).then((value) {
          player.play(AssetSource('bell.mp3'));
        });
      }
    });

    return _buildConfetti();
  }

  Widget _buildConfetti() {
    return ConfettiWidget(
      confettiController: _controller,
      blastDirectionality: BlastDirectionality.explosive,
      blastDirection: pi / 2,
      emissionFrequency: 0.1,
      minBlastForce: 5,
      maxBlastForce: 20,
      numberOfParticles: 10,
      gravity: 0.1,
      colors: const [Colors.green, Colors.pink, Colors.orange],
      shouldLoop: false,
      minimumSize: const Size(20, 20),
      maximumSize: const Size(40, 40),
      particleDrag: 0.001,
      // canvas: const Size(100, 100),
      createParticlePath: drawStar,
    );
  }
}
