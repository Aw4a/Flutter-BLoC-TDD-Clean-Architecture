import 'package:dartz/dartz.dart';

import 'package:flutter_bloc_tdd_clean_architecture/core/errors/failure.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;

typedef DataMap = Map<String, dynamic>;
