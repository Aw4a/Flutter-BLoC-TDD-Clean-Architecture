import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_tdd_clean_architecture/core/errors/failure.dart';
import 'package:flutter_bloc_tdd_clean_architecture/src/on_boarding/domain/usecases/cache_first_timer.dart';
import 'package:flutter_bloc_tdd_clean_architecture/src/on_boarding/domain/usecases/check_if_user_is_first_timer.dart';
import 'package:flutter_bloc_tdd_clean_architecture/src/on_boarding/presentations/cubit/on_boarding_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCacheFirstTimer extends Mock implements CacheFirstTimer {}

class MockChechIfUserIsFirstTimer extends Mock
    implements CheckIfUserIsFirstTimer {}

void main() {
  late CacheFirstTimer cacheFirstTimer;
  late CheckIfUserIsFirstTimer checkIfUserIsFirstTimer;
  late OnBoardingCubit cubit;

  setUp(() {
    cacheFirstTimer = MockCacheFirstTimer();
    checkIfUserIsFirstTimer = MockChechIfUserIsFirstTimer();
    cubit = OnBoardingCubit(
      cacheFirstTimer: cacheFirstTimer,
      checkIfUserIsFirstTimer: checkIfUserIsFirstTimer,
    );
  });

  final tFailure =
      CacheFailure(message: 'Insufficient Permission', statusCode: 4032);

  test('initial state should be [OnBoardingInitial]', () {
    expect(
      cubit.state,
      const OnBoardingInitial(),
    );
  });

  group('cacheFirstTimer', () {
    blocTest<OnBoardingCubit, OnBoardingState>(
      'should emits [CachingFirstTimer ,UserCached] when cacheFirstTimer '
      'succeeds',
      build: () {
        when(() => cacheFirstTimer())
            .thenAnswer((_) async => const Right(null));
        return cubit;
      },
      act: (cubit) => cubit.cacheFirstTimer(),
      expect: () => const [
        CachingFirstTimer(),
        UserCached(),
      ],
      verify: (_) {
        verify(() => cacheFirstTimer()).called(1);
        verifyNoMoreInteractions(cacheFirstTimer);
      },
    );

    blocTest<OnBoardingCubit, OnBoardingState>(
      'should emits [CachingFirstTimer ,OnBoardingError] when unsuccessful ',
      build: () {
        when(() => cacheFirstTimer()).thenAnswer(
          (_) async => Left(
            tFailure,
          ),
        );
        return cubit;
      },
      act: (cubit) => cubit.cacheFirstTimer(),
      expect: () => [
        const CachingFirstTimer(),
        OnBoardingError(tFailure.errorMessage),
      ],
      verify: (_) {
        verify(() => cacheFirstTimer()).called(1);
        verifyNoMoreInteractions(cacheFirstTimer);
      },
    );
  });

  group('checkIfUserIsFirstTimer', () {
    blocTest<OnBoardingCubit, OnBoardingState>(
      'should emit [CheckingIfUserFirstTimer, OnBoardingStatus] when '
      'successful',
      build: () {
        when(() => checkIfUserIsFirstTimer()).thenAnswer(
          (_) async => const Right(false),
        );
        return cubit;
      },
      act: (cubit) => cubit.checkIfUserIsFirstTimer(),
      expect: () => const [
        CheckingIfUserFirstTimer(),
        OnBoardingStatus(isFirstTimer: false),
      ],
      verify: (_) {
        verify(() => checkIfUserIsFirstTimer()).called(1);
        verifyNoMoreInteractions(checkIfUserIsFirstTimer);
      },
    );
    blocTest<OnBoardingCubit, OnBoardingState>(
      'should emit [CheckingIfUserIsFirstTimer, OnBoardingStats(true)] when '
      'unsuccessful',
      build: () {
        when(() => checkIfUserIsFirstTimer()).thenAnswer(
          (_) async => Left(tFailure),
        );
        return cubit;
      },
      act: (cubit) => cubit.checkIfUserIsFirstTimer(),
      expect: () => const [
        CheckingIfUserFirstTimer(),
        OnBoardingStatus(isFirstTimer: true),
      ],
      verify: (_) {
        verify(() => checkIfUserIsFirstTimer()).called(1);
        verifyNoMoreInteractions(checkIfUserIsFirstTimer);
      },
    );
  });
}
