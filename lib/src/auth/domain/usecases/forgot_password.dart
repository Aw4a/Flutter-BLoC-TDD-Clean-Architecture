import 'package:flutter_bloc_tdd_clean_architecture/core/usecases/usecases.dart';
import 'package:flutter_bloc_tdd_clean_architecture/core/utils/typdefs.dart';
import 'package:flutter_bloc_tdd_clean_architecture/src/auth/domain/repos/auth_repo.dart';

class ForgotPassword extends UsecaseWithParams<void, String> {
  const ForgotPassword(this._repo);

  final AuthRepo _repo;

  @override
  ResultFuture<void> call(String params) => _repo.forgotPassword(params);
}
