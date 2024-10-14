import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_tdd_clean_architecture/core/res/media_res.dart';

class PageContent extends Equatable {
  const PageContent({
    required this.image,
    required this.title,
    required this.description,
  });

  const PageContent.first()
      : this(
          image: MediaRes.casualReading,
          title: 'Introduction to BLoC and Clean Architecture',
          description:
              'Learn how BLoC helps separate business logic from your UI, '
              'ensuring a clean and scalable architecture for your Flutter '
              'projects. This step-by-step guide will help you build '
              'resilient applications using best practices.',
        );

  const PageContent.second()
      : this(
          image: MediaRes.casualLife,
          title: 'Test-Driven Development in Action',
          description:
              'Discover the power of Test-Driven Development (TDD). Write '
              'tests before implementing features to ensure your application '
              'behaves as expected and stays maintainable as it grows.',
        );

  const PageContent.third()
      : this(
          image: MediaRes.casualMeditationScience,
          title: 'Your Path to Scalable Flutter Apps',
          description:
              'Master Clean Architecture in Flutter. Keep your code organized, '
              'modular, and easy to maintain, enabling a seamless developer '
              'experience for building scalable applications.',
        );

  final String image;
  final String title;
  final String description;

  @override
  List<Object?> get props => [image, title, description];
}
