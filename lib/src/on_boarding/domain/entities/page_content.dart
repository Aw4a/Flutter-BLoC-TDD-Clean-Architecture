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
    title: 'BLoC & Clean Architecture',
    description: 'Learn how to separate business logic from UI for scalable Flutter apps.',
  );

  const PageContent.second()
      : this(
    image: MediaRes.casualLife,
    title: 'TDD in Action',
    description: 'Write tests before features to ensure expected behavior and maintainability.',
  );

  const PageContent.third()
      : this(
    image: MediaRes.casualMeditationScience,
    title: 'Scalable Flutter Apps',
    description: 'Master Clean Architecture for organized and modular code.',
  );

  final String image;
  final String title;
  final String description;

  @override
  List<Object?> get props => [image, title, description];
}
