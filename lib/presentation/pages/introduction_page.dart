import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:job_finder/utils/app_theme.dart';
import 'package:job_finder/utils/assets.gen.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(
              defaultMargin.h * 2.5,
            ),
            Image.asset(
              Assets.png.introduction.path,
              height: MediaQuery.of(context).size.height * 0.4,
            ),
            Gap(
              defaultMargin.h * 2,
            ),
            RichText(
              text: TextSpan(
                text: 'Find your ',
                style: blackTextStyle.copyWith(
                  fontSize: 26.sp,
                  fontWeight: bold,
                ),
                children: [
                  TextSpan(
                    text: 'Dream Jobs',
                    style: primaryTextStyle.copyWith(
                      fontSize: 26.sp,
                      fontWeight: bold,
                    ),
                  ),
                ],
              ),
            ),
            Gap(
              defaultMargin.h * 2,
            ),
            Text(
              "Welcome to our Elux Job App! We're here to help you find your dream job",
              style: greyTextStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: regular,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(defaultMargin),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/choose_jobs');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: colorPrimary,
            foregroundColor: colorPurpleLight,
            padding: const EdgeInsets.symmetric(
              vertical: 8,
            ),
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(24), // Adjust the radius as needed
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Get Started',
                style: whiteTextStyle.copyWith(
                  fontWeight: bold,
                ),
              ),
              Gap(8.w),
              SvgPicture.asset(Assets.svg.arrowRight)
            ],
          ),
        ),
      ),
    );
  }
}
