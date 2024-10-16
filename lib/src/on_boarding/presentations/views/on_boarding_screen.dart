import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_tdd_clean_architecture/core/common/views/loading_view.dart';
import 'package:flutter_bloc_tdd_clean_architecture/core/common/widgets/gradient_background.dart';
import 'package:flutter_bloc_tdd_clean_architecture/core/res/colors.dart';
import 'package:flutter_bloc_tdd_clean_architecture/core/res/media_res.dart';
import 'package:flutter_bloc_tdd_clean_architecture/src/on_boarding/domain/entities/page_content.dart';
import 'package:flutter_bloc_tdd_clean_architecture/src/on_boarding/presentations/cubit/on_boarding_cubit.dart';
import 'package:flutter_bloc_tdd_clean_architecture/src/on_boarding/presentations/widgets/on_boarding_body.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  static const routeName = '/';

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final pageController = PageController();

  @override
  void initState() {
    super.initState();
    context.read<OnBoardingCubit>().checkIfUserIsFirstTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GradientBackground(
        image: MediaRes.onBoardingBackground,
        child: BlocConsumer<OnBoardingCubit, OnBoardingState>(
          listener: (context, state) {
            if (state is OnBoardingStatus && !state.isFirstTimer) {
              Navigator.pushReplacementNamed(context, '/home');
            } else if (state is UserCached) {

            }
          },
          builder: (context, state) {
            if (state is CheckingIfUserFirstTimer ||
                state is CachingFirstTimer) {
              return const LoadingView();
            }
            return Stack(
              children: [
                PageView(
                  controller: pageController,
                  children: const [
                    OnBoardingBody(pageContent: PageContent.first()),
                    OnBoardingBody(pageContent: PageContent.second()),
                    OnBoardingBody(pageContent: PageContent.third()),
                  ],
                ),
                Align(
                  alignment: const Alignment(0, 0.95),
                  child: SmoothPageIndicator(
                    controller: pageController,
                    count: 3,
                    onDotClicked: (index) {
                      pageController.animateToPage(
                        index,
                        duration: const Duration(milliseconds: 470),
                        curve: Curves.easeInOut,
                      );
                    },
                    effect: const WormEffect(
                      dotHeight: 9,
                      dotWidth: 9,
                      spacing: 39,
                      activeDotColor: AppColors.primaryBase,
                      dotColor: AppColors.neutral200,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
