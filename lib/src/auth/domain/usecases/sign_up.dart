import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_tdd_clean_architecture/core/usecases/usecases.dart';
import 'package:flutter_bloc_tdd_clean_architecture/core/utils/typdefs.dart';
import 'package:flutter_bloc_tdd_clean_architecture/src/auth/domain/repos/auth_repo.dart';

class SignUp extends UsecaseWithParams<void, SignUpParams> {
  const SignUp(this._repo);

  final AuthRepo _repo;

  @override
  ResultFuture<void> call(SignUpParams params) => _repo.signUp(
        email: params.email,
        fullName: params.fullName,
        password: params.password,
      );
}

class SignUpParams extends Equatable {
  const SignUpParams({
    required this.email,
    required this.fullName,
    required this.password,
  });

  const SignUpParams.empty() : this(email: '', fullName: '', password: '');

  final String email;
  final String fullName;
  final String password;

  @override
  List<String> get props => [email, fullName, password];
}
