import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_tdd_clean_architecture/core/res/media_res.dart';

class PageContent extends Equatable {
  const PageContent({
    required this.image,
    required this.title,
    required this.description,
  });

  const PageContent.first() : this(
    image: MediaRes.casualReading,
    title: 'Flutter Clean Architecture',
    description: 'This is the flutter TDD & CleanArch',
  );

  const PageContent.second() : this(
    image: MediaRes.casualLife,
    title: 'Flutter Clean Architecture',
    description: 'This is the flutter TDD & CleanArch',
  );

  final String image;
  final String title;
  final String description;

  @override
  List<Object?> get props => [image, title, description];
}
