import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'session_type_repository.freezed.dart';
part 'session_type_repository.g.dart';

@freezed
class SessionTypeState with _$SessionTypeState {
  const SessionTypeState._();
  const factory SessionTypeState({
    required int value,
  }) = _SessionTypeState;
}

@riverpod
class SessionTypeRepository extends _$SessionTypeRepository {
  @override
  int build() {
    return 0;
  }

  void setValue(value) => state = value;
}
