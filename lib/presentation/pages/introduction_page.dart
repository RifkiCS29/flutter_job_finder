import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
            SizedBox(
              height: defaultMargin * 2.5,
            ),
            Image.asset(
              Assets.png.introduction.path,
              height: MediaQuery.of(context).size.height * 0.4,
            ),
            SizedBox(
              height: defaultMargin * 2,
            ),
            RichText(
              text: TextSpan(
                text: 'Find your ',
                style: blackTextStyle.copyWith(
                  fontSize: 26,
                  fontWeight: bold,
                ),
                children: [
                  TextSpan(
                    text: 'Dream Jobs',
                    style: primaryTextStyle.copyWith(
                      fontSize: 26,
                      fontWeight: bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: defaultMargin * 2,
            ),
            Text(
              "Welcome to our Elux Job App! We're here to help you find your dream job",
              style: greyTextStyle.copyWith(
                fontSize: 16,
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
              const SizedBox(width: 8),
              SvgPicture.asset(Assets.svg.arrowRight)
            ],
          ),
        ),
      ),
    );
  }
}
