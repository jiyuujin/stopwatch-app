import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'session_time_repository.freezed.dart';
part 'session_time_repository.g.dart';

@freezed
class SessionTimeState with _$SessionTimeState {
  const SessionTimeState._();
  const factory SessionTimeState({
    required int value,
  }) = _SessionTimeState;
}

@riverpod
class SessionTimeRepository extends _$SessionTimeRepository {
  @override
  int build() {
    return 0;
  }

  void setValue(value) => state = value;
}
