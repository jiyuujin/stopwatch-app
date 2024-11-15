import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stopwatch_app/constants.dart';
import 'package:stopwatch_app/repositories/custom_session_time_repository.dart';
import 'package:stopwatch_app/repositories/session_type_repository.dart';

class SessionTimePage extends HookConsumerWidget {
  const SessionTimePage({super.key, required this.disabled});

  final bool disabled;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myTime = ref.watch(sessionTypeRepositoryProvider);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ToggleButtons(
          isSelected: items.map((i) => i == items.elementAt(myTime)).toList(),
          selectedColor: Colors.blue[300],
          splashColor: Colors.transparent,
          constraints: BoxConstraints(
              minHeight: 40,
              minWidth: (MediaQuery.of(context).size.width - 36) / 4),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          children: items
              .map((item) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(item),
                  ))
              .toList(),
          onPressed: (int index) {
            if (disabled) return;
            ref.watch(sessionTypeRepositoryProvider.notifier).setValue(index);
          },
        ),
        myTime == 2
            ? TextField(
                decoration: const InputDecoration(
                  labelText: 'Custom',
                  hintText: 'Input minutes',
                ),
                keyboardType: TextInputType.number,
                onChanged: (String value) {
                  if (disabled) return;
                  ref
                      .watch(customSessionTimeRepositoryProvider.notifier)
                      .setValue(int.parse(value));
                },
              )
            : const SizedBox(),
      ],
    );
  }
}
