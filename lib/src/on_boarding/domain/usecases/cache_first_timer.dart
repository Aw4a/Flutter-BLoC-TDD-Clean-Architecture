import 'package:flutter_bloc_tdd_clean_architecture/core/utils/typdefs.dart';
import 'package:flutter_bloc_tdd_clean_architecture/src/on_boarding/domain/repos/on_boarding_repo.dart';

class CacheFirstTimer extends UserCaseWithoutParams<void> {
  const CacheFirstTimer(this._repo);

  final OnBoardingRepo _repo;

  @override
  ResultFuture<void> call() async => _repo.cacheFirstTimer();
}
