# 🚀 Flutter BLoC TDD & Clean Architecture

Welcome to the **Flutter BLoC TDD & Clean Architecture** repository! This project is designed to demonstrate best practices for building scalable, maintainable, and testable Flutter applications using BLoC state management, Test-Driven Development (TDD), and Clean Architecture.

## 📦 Packages Used

### Dependencies:

[![bloc: version](https://img.shields.io/badge/bloc-^8.1.4-green.svg)](https://pub.dev/packages/bloc)
[![flutter_bloc: version](https://img.shields.io/badge/flutter__bloc-^8.1.6-orange.svg)](https://pub.dev/packages/flutter_bloc)
[![dartz: version](https://img.shields.io/badge/dartz-^0.10.1-red.svg)](https://pub.dev/packages/dartz)
[![equatable: version](https://img.shields.io/badge/equatable-^2.0.5-purple.svg)](https://pub.dev/packages/equatable)
[![file_picker: version](https://img.shields.io/badge/file__picker-^8.1.2-cyan.svg)](https://pub.dev/packages/file_picker)
[![font_awesome_flutter: version](https://img.shields.io/badge/font__awesome__flutter-^10.7.0-yellow.svg)](https://pub.dev/packages/font_awesome_flutter)
[![get_it: version](https://img.shields.io/badge/get__it-^8.0.0-magenta.svg)](https://pub.dev/packages/get_it)
[![iconly: version](https://img.shields.io/badge/iconly-^1.0.1-brown.svg)](https://pub.dev/packages/iconly)
[![image_picker: version](https://img.shields.io/badge/image__picker-^1.1.2-pink.svg)](https://pub.dev/packages/image_picker)
[![intl: version](https://img.shields.io/badge/intl-^0.19.0-gray.svg)](https://pub.dev/packages/intl)
[![lottie: version](https://img.shields.io/badge/lottie-^3.0.0-green.svg)](https://pub.dev/packages/lottie)
[![open_file: version](https://img.shields.io/badge/open__file-^3.5.8-orange.svg)](https://pub.dev/packages/open_file)
[![path_provider: version](https://img.shields.io/badge/path__provider-^2.1.4-red.svg)](https://pub.dev/packages/path_provider)
[![provider: version](https://img.shields.io/badge/provider-^6.1.2-purple.svg)](https://pub.dev/packages/provider)
[![shared_preferences: version](https://img.shields.io/badge/shared__preferences-^2.3.2-cyan.svg)](https://pub.dev/packages/shared_preferences)
[![smooth_page_indicator: version](https://img.shields.io/badge/smooth__page__indicator-^1.2.0+3-yellow.svg)](https://pub.dev/packages/smooth_page_indicator)
[![swipe_to: version](https://img.shields.io/badge/swipe__to-^1.0.6-magenta.svg)](https://pub.dev/packages/swipe_to)
[![url_launcher: version](https://img.shields.io/badge/url__launcher-^6.3.1-brown.svg)](https://pub.dev/packages/url_launcher)
[![youtube_metadata: version](https://img.shields.io/badge/youtube__metadata-^1.0.1-pink.svg)](https://pub.dev/packages/youtube_metadata)
[![video_thumbnail: version](https://img.shields.io/badge/video__thumbnail-^0.5.3-gray.svg)](https://pub.dev/packages/video_thumbnail)
[![chewie: version](https://img.shields.io/badge/chewie-^1.8.5-lightblue.svg)](https://pub.dev/packages/chewie)

### Dev Dependencies:

[![flutter_test: version](https://img.shields.io/badge/flutter__test-^-green.svg)](https://pub.dev/packages/flutter_test)
[![flutter_lints: version](https://img.shields.io/badge/flutter__lints-^4.0.0-orange.svg)](https://pub.dev/packages/flutter_lints)
[![bloc_test: version](https://img.shields.io/badge/bloc__test-^9.1.7-red.svg)](https://pub.dev/packages/bloc_test)
[![mocktail: version](https://img.shields.io/badge/mocktail-^1.0.4-purple.svg)](https://pub.dev/packages/mocktail)
[![very_good_analysis: version](https://img.shields.io/badge/style-very__good__analysis-B22C89.svg)](https://pub.dev/packages/very_good_analysis)

## 📑 Getting Started

To get started with this project, clone the repository and run the following commands:

```bash
# Clone the repository
git clone https://github.com/Aw4a/flutter-bloc-tdd-clean-architecture.git

# Navigate to the project directory
cd flutter-bloc-tdd-clean-architecture

# Get dependencies
flutter pub get

# Run the project
flutter run
```

## 🧪 Running Tests

This project uses Test-Driven Development (TDD) principles. To run all tests, use:

```bash
flutter test
```

## 📂 Folder Structure

<!-- FOLDER_STRUCTURE_START -->


<details>
  <summary>Click to expand/collapse lib folder structure</summary>

  ```
lib/
    ├── core
        ├── common
            ├── views
                ├── page_under_construction.dart
        ├── errors
            ├── exceptions.dart
            ├── failure.dart
        ├── res
            ├── colors.dart
            ├── font.dart
            ├── media_res.dart
            ├── typography.dart
        ├── services
            ├── router.dart
        ├── usecases
            ├── usecases.dart
        ├── utils
            ├── typdefs.dart
    ├── main.dart
    ├── src
        ├── on_boarding
            ├── data
                ├── datasources
                    ├── on_boarding_local_data_source.dart
                ├── repos
                    ├── on_boarding_repo_impl.dart
            ├── domain
                ├── entities
                    ├── page_content.dart
                ├── repos
                    ├── on_boarding_repo.dart
                ├── usecases
                    ├── cache_first_timer.dart
                    ├── check_if_user_is_first_timer.dart
            ├── presentations
                ├── on_boarding_screen.dart
```

</details>



<details>
  <summary>Click to expand/collapse test folder structure</summary>

  ```
test/
    ├── src
        ├── on_boarding
            ├── data
                ├── repos
                    ├── on_boarding_repo_impl_test.dart
            ├── domain
                ├── usecases
                    ├── cache_first_timer_test.dart
                    ├── check_if_user_is_first_timer_test.dart
                    ├── on_boarding_repo_mock.dart
```

</details>



<details>
  <summary>Click to expand/collapse assets folder structure</summary>

  ```
assets/
    ├── fonts
        ├── aeonik
            ├── AeonikTRIAL-Bold.otf
            ├── AeonikTRIAL-BoldItalic.otf
            ├── AeonikTRIAL-Light.otf
            ├── AeonikTRIAL-LightItalic.otf
            ├── AeonikTRIAL-Regular.otf
            ├── AeonikTRIAL-RegularItalic.otf
        ├── poppins
            ├── Poppins-Black.ttf
            ├── Poppins-BlackItalic.ttf
            ├── Poppins-Bold.ttf
            ├── Poppins-BoldItalic.ttf
            ├── Poppins-ExtraBold.ttf
            ├── Poppins-ExtraBoldItalic.ttf
            ├── Poppins-ExtraLight.ttf
            ├── Poppins-ExtraLightItalic.ttf
            ├── Poppins-Italic.ttf
            ├── Poppins-Light.ttf
            ├── Poppins-LightItalic.ttf
            ├── Poppins-Medium.ttf
            ├── Poppins-MediumItalic.ttf
            ├── Poppins-Regular.ttf
            ├── Poppins-SemiBold.ttf
            ├── Poppins-SemiBoldItalic.ttf
            ├── Poppins-Thin.ttf
            ├── Poppins-ThinItalic.ttf
    ├── icons
        ├── atom.png
        ├── bronze_medal.png
        ├── calculator.png
        ├── course.png
        ├── course_info_exam.png
        ├── course_info_material.png
        ├── course_info_video.png
        ├── crown.png
        ├── dart.svg
        ├── dna.png
        ├── document.png
        ├── exam_time.png
        ├── exam_time_red.png
        ├── flask.png
        ├── json.png
        ├── microscope.png
        ├── questions_document.png
        ├── scoreboard.png
        ├── silver_medal.png
        ├── subscription_month.png
        ├── subscription_year.png
        ├── test.png
        ├── translation.png
        ├── user.png
        ├── video.png
        ├── write.png
        ├── youtube.png
    ├── images
        ├── auth_gradient_background.png
        ├── default_user.png
        ├── documents_gradient_background.png
        ├── home_gradient_background.png
        ├── leaderboard_gradient_background.png
        ├── onBoarding_background.png
        ├── profile_gradient_background.png
        ├── video_placeholder.png
    ├── lottie
        ├── empty_leaderboard.json
        ├── no_notifications.json
        ├── page_under_construction.json
    ├── vectors
        ├── blue_pot_plant.png
        ├── casual_life.png
        ├── casual_meditation.png
        ├── casual_meditation_science.png
        ├── casual_reading.png
        ├── microscope.png
        ├── steam_cup.png
        ├── turquoise_pot_plant.png
```

</details>


(More to be added in the future)

<!-- FOLDER_STRUCTURE_END -->

## 🛠️ Features

- **BLoC State Management**: Separation of business logic using the BLoC pattern.
- **Test-Driven Development**: Writing tests before implementing features.
- **Clean Architecture**: Keeping the codebase maintainable, scalable, and easy to test.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE.md) file for details.

## 👤 Author

- **Aw4a**

Feel free to contribute, open issues, or fork this project. Happy coding! ✨