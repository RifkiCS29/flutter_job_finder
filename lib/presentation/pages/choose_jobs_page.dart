import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:job_finder/data/data_dummy/job_option_data.dart';
import 'package:job_finder/data/models/job_model.dart';
import 'package:job_finder/utils/app_theme.dart';
import 'package:job_finder/utils/assets.gen.dart';

part 'package:job_finder/presentation/widgets/job_options.dart';

class ChooseJobsPage extends StatelessWidget {
  const ChooseJobsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Gap(
            defaultMargin.h * 2.5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Select Your Job\nCategory',
                style: blackTextStyle.copyWith(
                  fontSize: 22.sp,
                  fontWeight: bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(defaultMargin),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: defaultMargin,
                mainAxisSpacing: defaultMargin,
              ),
              itemCount: jobOptionData.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return JobOptions(
                  job: jobOptionData[index],
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 8,
        ),
        child: ElevatedButton(
          onPressed: () {
            context.push('/home');
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
