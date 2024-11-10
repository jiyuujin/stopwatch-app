// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countdown_timer_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$countdownTimerRepositoryHash() =>
    r'30fe01899f1b1c4756b41636f12ef721f5a61d6a';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$CountdownTimerRepository
    extends BuildlessAutoDisposeNotifier<CountdownTimerState> {
  late final Duration initial;
  late final Duration interval;

  CountdownTimerState build({
    required Duration initial,
    required Duration interval,
  });
}

/// See also [CountdownTimerRepository].
@ProviderFor(CountdownTimerRepository)
const countdownTimerRepositoryProvider = CountdownTimerRepositoryFamily();

/// See also [CountdownTimerRepository].
class CountdownTimerRepositoryFamily extends Family {
  /// See also [CountdownTimerRepository].
  const CountdownTimerRepositoryFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'countdownTimerRepositoryProvider';

  /// See also [CountdownTimerRepository].
  CountdownTimerRepositoryProvider call({
    required Duration initial,
    required Duration interval,
  }) {
    return CountdownTimerRepositoryProvider(
      initial: initial,
      interval: interval,
    );
  }

  @visibleForOverriding
  @override
  CountdownTimerRepositoryProvider getProviderOverride(
    covariant CountdownTimerRepositoryProvider provider,
  ) {
    return call(
      initial: provider.initial,
      interval: provider.interval,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(CountdownTimerRepository Function() create) {
    return _$CountdownTimerRepositoryFamilyOverride(this, create);
  }
}

class _$CountdownTimerRepositoryFamilyOverride implements FamilyOverride {
  _$CountdownTimerRepositoryFamilyOverride(this.overriddenFamily, this.create);

  final CountdownTimerRepository Function() create;

  @override
  final CountdownTimerRepositoryFamily overriddenFamily;

  @override
  CountdownTimerRepositoryProvider getProviderOverride(
    covariant CountdownTimerRepositoryProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [CountdownTimerRepository].
class CountdownTimerRepositoryProvider extends AutoDisposeNotifierProviderImpl<
    CountdownTimerRepository, CountdownTimerState> {
  /// See also [CountdownTimerRepository].
  CountdownTimerRepositoryProvider({
    required Duration initial,
    required Duration interval,
  }) : this._internal(
          () => CountdownTimerRepository()
            ..initial = initial
            ..interval = interval,
          from: countdownTimerRepositoryProvider,
          name: r'countdownTimerRepositoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$countdownTimerRepositoryHash,
          dependencies: CountdownTimerRepositoryFamily._dependencies,
          allTransitiveDependencies:
              CountdownTimerRepositoryFamily._allTransitiveDependencies,
          initial: initial,
          interval: interval,
        );

  CountdownTimerRepositoryProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.initial,
    required this.interval,
  }) : super.internal();

  final Duration initial;
  final Duration interval;

  @override
  CountdownTimerState runNotifierBuild(
    covariant CountdownTimerRepository notifier,
  ) {
    return notifier.build(
      initial: initial,
      interval: interval,
    );
  }

  @override
  Override overrideWith(CountdownTimerRepository Function() create) {
    return ProviderOverride(
      origin: this,
      override: CountdownTimerRepositoryProvider._internal(
        () => create()
          ..initial = initial
          ..interval = interval,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        initial: initial,
        interval: interval,
      ),
    );
  }

  @override
  ({
    Duration initial,
    Duration interval,
  }) get argument {
    return (
      initial: initial,
      interval: interval,
    );
  }

  @override
  AutoDisposeNotifierProviderElement<CountdownTimerRepository,
      CountdownTimerState> createElement() {
    return _CountdownTimerRepositoryProviderElement(this);
  }

  CountdownTimerRepositoryProvider _copyWith(
    CountdownTimerRepository Function() create,
  ) {
    return CountdownTimerRepositoryProvider._internal(
      () => create()
        ..initial = initial
        ..interval = interval,
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      initial: initial,
      interval: interval,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is CountdownTimerRepositoryProvider &&
        other.initial == initial &&
        other.interval == interval;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initial.hashCode);
    hash = _SystemHash.combine(hash, interval.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CountdownTimerRepositoryRef
    on AutoDisposeNotifierProviderRef<CountdownTimerState> {
  /// The parameter `initial` of this provider.
  Duration get initial;

  /// The parameter `interval` of this provider.
  Duration get interval;
}

class _CountdownTimerRepositoryProviderElement
    extends AutoDisposeNotifierProviderElement<CountdownTimerRepository,
        CountdownTimerState> with CountdownTimerRepositoryRef {
  _CountdownTimerRepositoryProviderElement(super.provider);

  @override
  Duration get initial => (origin as CountdownTimerRepositoryProvider).initial;
  @override
  Duration get interval =>
      (origin as CountdownTimerRepositoryProvider).interval;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
