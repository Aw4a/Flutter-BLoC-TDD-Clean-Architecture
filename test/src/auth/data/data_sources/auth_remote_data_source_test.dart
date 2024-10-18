import 'package:dartz/dartz.dart';
import 'package:flutter_bloc_tdd_clean_architecture/core/enums/update_user.dart';
import 'package:flutter_bloc_tdd_clean_architecture/core/errors/exceptions.dart';
import 'package:flutter_bloc_tdd_clean_architecture/core/errors/failure.dart';
import 'package:flutter_bloc_tdd_clean_architecture/src/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:flutter_bloc_tdd_clean_architecture/src/auth/data/models/user_model.dart';
import 'package:flutter_bloc_tdd_clean_architecture/src/auth/data/repos/auth_repo_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRemoteDataSource extends Mock implements AuthRemoteDataSource {}

void main() {
  late AuthRepoImpl authRepo;
  late MockAuthRemoteDataSource mockRemoteDataSource;

  setUp(() {
    mockRemoteDataSource = MockAuthRemoteDataSource();
    authRepo = AuthRepoImpl(mockRemoteDataSource);
  });

  group('forgotPassword', () {
    const tEmail = 'test@example.com';

    test('should call forgotPassword on the remote data source', () async {
      // Arrange
      when(() => mockRemoteDataSource.forgotPassword(tEmail))
          .thenAnswer((_) async {});

      // Act
      final result = await authRepo.forgotPassword(tEmail);

      // Assert
      verify(() => mockRemoteDataSource.forgotPassword(tEmail)).called(1);
      expect(result, const Right<Failure, void>(null));
    });

    test('should return ServerFailure when a ServerException occurs', () async {
      // Arrange
      when(() => mockRemoteDataSource.forgotPassword(tEmail)).thenThrow(
        const ServerException(message: 'Server error', statusCode: '500'),
      );

      // Act
      final result = await authRepo.forgotPassword(tEmail);

      // Assert
      expect(
        result,
        Left<ServerFailure, void>(
          ServerFailure(message: 'Server error', statusCode: '500'),
        ),
      );
    });
  });

  group('signIn', () {
    const tEmail = 'test@example.com';
    const tPassword = 'password123';
    const tUser = LocalUserModel(
      uid: '123',
      email: tEmail,
      fullName: 'Test User',
      points: 0,
    );

    test('should call signIn on the remote data source', () async {
      // Arrange
      when(
        () => mockRemoteDataSource.signIn(email: tEmail, password: tPassword),
      ).thenAnswer((_) async => tUser);
      // Act
      final result = await authRepo.signIn(email: tEmail, password: tPassword);

      // Assert
      verify(
        () => mockRemoteDataSource.signIn(email: tEmail, password: tPassword),
      ).called(1);
      expect(
        result,
        const Right<Failure, LocalUserModel>(tUser),
      );
    });

    test('should return ServerFailure when a ServerException occurs', () async {
      // Arrange
      when(
        () => mockRemoteDataSource.signIn(email: tEmail, password: tPassword),
      ).thenThrow(
        const ServerException(
          message: 'Invalid credentials',
          statusCode: '401',
        ),
      );

      // Act
      final result = await authRepo.signIn(email: tEmail, password: tPassword);

      // Assert
      expect(
        result,
        Left<ServerFailure, LocalUserModel>(
          ServerFailure(message: 'Invalid credentials', statusCode: '401'),
        ),
      );
    });
  });

  group('signUp', () {
    const tEmail = 'test@example.com';
    const tFullName = 'Test User';
    const tPassword = 'password123';

    test('should call signUp on the remote data source', () async {
      // Arrange
      when(
        () => mockRemoteDataSource.signUp(
          email: tEmail,
          fullName: tFullName,
          password: tPassword,
        ),
      ).thenAnswer((_) async {});

      // Act
      final result = await authRepo.signUp(
        email: tEmail,
        fullName: tFullName,
        password: tPassword,
      );

      // Assert
      verify(
        () => mockRemoteDataSource.signUp(
          email: tEmail,
          fullName: tFullName,
          password: tPassword,
        ),
      ).called(1);
      expect(result, const Right<Failure, void>(null));
    });

    test('should return ServerFailure when a ServerException occurs', () async {
      // Arrange
      when(
        () => mockRemoteDataSource.signUp(
          email: tEmail,
          fullName: tFullName,
          password: tPassword,
        ),
      ).thenThrow(
        const ServerException(message: 'Server error', statusCode: '500'),
      );

      // Act
      final result = await authRepo.signUp(
        email: tEmail,
        fullName: tFullName,
        password: tPassword,
      );

      // Assert
      expect(
        result,
        Left<ServerFailure, void>(
          ServerFailure(message: 'Server error', statusCode: '500'),
        ),
      );
    });
  });

  group('updateUser', () {
    const tAction = UpdateUserAction.profile;
    const tUserData = {'fullName': 'Updated Name'};

    test('should call updateUser on the remote data source', () async {
      // Arrange
      when(
        () => mockRemoteDataSource.updateUser(
          action: tAction,
          userData: tUserData,
        ),
      ).thenAnswer((_) async {});

      // Act
      final result =
          await authRepo.updateUser(action: tAction, userData: tUserData);

      // Assert
      verify(
        () => mockRemoteDataSource.updateUser(
          action: tAction,
          userData: tUserData,
        ),
      ).called(1);
      expect(result, const Right<Failure, void>(null));
    });

    test('should return ServerFailure when a ServerException occurs', () async {
      // Arrange
      when(
        () => mockRemoteDataSource.updateUser(
          action: tAction,
          userData: tUserData,
        ),
      ).thenThrow(
        const ServerException(message: 'Server error', statusCode: '500'),
      );

      // Act
      final result =
          await authRepo.updateUser(action: tAction, userData: tUserData);

      // Assert
      expect(
        result,
        Left<ServerFailure, void>(
          ServerFailure(message: 'Server error', statusCode: '500'),
        ),
      );
    });
  });
}
