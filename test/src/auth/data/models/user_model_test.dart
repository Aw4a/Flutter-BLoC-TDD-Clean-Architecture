import 'package:flutter_bloc_tdd_clean_architecture/src/auth/data/models/user_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LocalUserModel', () {
    test('fromMap creates a valid LocalUserModel from a map', () {
      final map = {
        'uid': '123',
        'email': 'test@example.com',
        'points': 50,
        'fullName': 'Test User',
        'profilePic': 'profile_pic_url',
        'bio': 'Test bio',
        'groupIds': ['group1', 'group2'],
        'enrolledCourseIds': ['course1', 'course2'],
        'following': ['user1', 'user2'],
        'followers': ['user3', 'user4'],
      };

      final user = LocalUserModel.fromMap(map);

      expect(user.uid, '123');
      expect(user.email, 'test@example.com');
      expect(user.points, 50);
      expect(user.fullName, 'Test User');
      expect(user.profilePic, 'profile_pic_url');
      expect(user.bio, 'Test bio');
      expect(user.groupIds, ['group1', 'group2']);
      expect(user.enrolledCourseIds, ['course1', 'course2']);
      expect(user.following, ['user1', 'user2']);
      expect(user.followers, ['user3', 'user4']);
    });

    test('toMap converts LocalUserModel to a valid map', () {
      const user = LocalUserModel(
        uid: '123',
        email: 'test@example.com',
        points: 50,
        fullName: 'Test User',
        profilePic: 'profile_pic_url',
        bio: 'Test bio',
        groupIds: ['group1', 'group2'],
        enrolledCourseIds: ['course1', 'course2'],
        following: ['user1', 'user2'],
        followers: ['user3', 'user4'],
      );

      final map = user.toMap();

      expect(map['uid'], '123');
      expect(map['email'], 'test@example.com');
      expect(map['points'], 50);
      expect(map['fullName'], 'Test User');
      expect(map['profilePic'], 'profile_pic_url');
      expect(map['bio'], 'Test bio');
      expect(map['groupIds'], ['group1', 'group2']);
      expect(map['enrolledCourseIds'], ['course1', 'course2']);
      expect(map['following'], ['user1', 'user2']);
      expect(map['followers'], ['user3', 'user4']);
    });

    test('copyWith returns a new LocalUserModel with updated fields', () {
      const user = LocalUserModel(
        uid: '123',
        email: 'test@example.com',
        points: 50,
        fullName: 'Test User',
        profilePic: 'profile_pic_url',
        bio: 'Test bio',
        groupIds: ['group1', 'group2'],
        enrolledCourseIds: ['course1', 'course2'],
        following: ['user1', 'user2'],
        followers: ['user3', 'user4'],
      );

      final updatedUser = user.copyWith(
        uid: '456',
        email: 'new@example.com',
        points: 100,
      );

      expect(updatedUser.uid, '456');
      expect(updatedUser.email, 'new@example.com');
      expect(updatedUser.points, 100);
      expect(updatedUser.fullName, 'Test User');  // unchanged
    });

    test('empty constructor creates a user with default values', () {
      const user = LocalUserModel.empty();

      expect(user.uid, '');
      expect(user.email, '');
      expect(user.points, 0);
      expect(user.fullName, '');
      expect(user.groupIds, isEmpty);
      expect(user.enrolledCourseIds, isEmpty);
      expect(user.following, isEmpty);
      expect(user.followers, isEmpty);
    });
  });
}
