import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'custom_session_time_repository.freezed.dart';
part 'custom_session_time_repository.g.dart';

@freezed
class CustomSessionTimeState with _$CustomSessionTimeState {
  const CustomSessionTimeState._();
  const factory CustomSessionTimeState({
    required int value,
  }) = _CustomSessionTimeState;
}

@riverpod
class CustomSessionTimeRepository extends _$CustomSessionTimeRepository {
  @override
  int build() {
    return 0;
  }

  void setValue(value) => state = value;
}
