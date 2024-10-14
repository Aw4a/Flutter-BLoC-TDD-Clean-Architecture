import 'package:flutter_bloc_tdd_clean_architecture/core/usecases/usecases.dart';
import 'package:flutter_bloc_tdd_clean_architecture/core/utils/typdefs.dart';
import 'package:flutter_bloc_tdd_clean_architecture/src/on_boarding/domain/repos/on_boarding_repo.dart';

class CheckIfUserIsFirstTimer extends UsecaseWithoutParams<bool>{
  const CheckIfUserIsFirstTimer(this._repo);

  final OnBoardingRepo _repo;

  @override
  ResultFuture<bool> call() => _repo.checkIfUserIsFirstTimer();

}
