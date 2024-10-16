import 'package:flutter/material.dart';
import 'package:flutter_bloc_tdd_clean_architecture/core/common/widgets/gradient_background.dart';
import 'package:flutter_bloc_tdd_clean_architecture/core/res/media_res.dart';
import 'package:lottie/lottie.dart';

class PageUnderConstruction extends StatelessWidget {
  const PageUnderConstruction({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      image: MediaRes.onBoardingBackground,
      child: Lottie.asset(MediaRes.pageUnderConstruction),
    );
  }
}
