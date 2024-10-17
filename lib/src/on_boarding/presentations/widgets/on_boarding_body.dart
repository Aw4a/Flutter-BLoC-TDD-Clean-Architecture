import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_tdd_clean_architecture/core/extensions/context_extension.dart';
import 'package:flutter_bloc_tdd_clean_architecture/core/res/buttons.dart';
import 'package:flutter_bloc_tdd_clean_architecture/core/res/colors.dart';
import 'package:flutter_bloc_tdd_clean_architecture/core/res/typography.dart';
import 'package:flutter_bloc_tdd_clean_architecture/src/on_boarding/domain/entities/page_content.dart';
import 'package:flutter_bloc_tdd_clean_architecture/src/on_boarding/presentations/cubit/on_boarding_cubit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({required this.pageContent, super.key});

  final PageContent pageContent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    pageContent.image,
                    height: context.height * .35,
                  ),
                  SizedBox(height: context.height * .03),
                  Text(
                    pageContent.title,
                    textAlign: TextAlign.center,
                    style: FontTextStyle.h4(color: AppColors.textMain900),
                  ),
                  SizedBox(height: context.height * .02),
                  Text(
                    pageContent.description,
                    textAlign: TextAlign.center,
                    style: FontTextStyle.paragraphMedium(
                      color: AppColors.textSub500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: AppButton(
                text: 'Get Started',
                width: 200.w,
                onPressed: () async {
                  await context.read<OnBoardingCubit>().cacheFirstTimer();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
