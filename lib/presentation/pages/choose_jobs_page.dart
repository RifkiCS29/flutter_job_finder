import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:job_finder/data/models/job_model.dart';
import 'package:job_finder/utils/app_theme.dart';
import 'package:job_finder/utils/assets.gen.dart';

class ChooseJobsPage extends StatelessWidget {
  const ChooseJobsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<JobModel> jobOptions = [
      JobModel(
        name: 'Design',
        assets: Assets.png.designer.path,
      ),
      JobModel(
        name: 'Engineer',
        assets: Assets.png.engineer.path,
      ),
      JobModel(
        name: 'Programming',
        assets: Assets.png.programmer.path,
      ),
      JobModel(
        name: 'Medical',
        assets: Assets.png.medical.path,
      ),
      JobModel(
        name: 'Marketing',
        assets: Assets.png.marketing.path,
      ),
      JobModel(
        name: 'Legal',
        assets: Assets.png.legal.path,
      ),
    ];

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
              itemCount: jobOptions.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return JobOption(
                  job: jobOptions[index],
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

class JobOption extends StatefulWidget {
  const JobOption({
    super.key,
    required this.job,
  });

  final JobModel job;

  @override
  State<JobOption> createState() => _JobOptionState();
}

class _JobOptionState extends State<JobOption> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        child: Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: isSelected == true
                    ? const Color(0xFF8E47CE).withOpacity(0.1)
                    : colorWhite,
                borderRadius: BorderRadius.circular(defaultRadius),
                border: Border.all(
                  color: isSelected == true ? colorPrimary : colorWhite,
                ),
                boxShadow: [
                  BoxShadow(
                    color: colorGrey.withOpacity(0.2), // Shadow color
                    spreadRadius: 1, // Spread radius
                    blurRadius: 1, // Blur radius
                    offset: const Offset(0, 1), // Offset
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    widget.job.assets ?? Assets.png.designer.path,
                    height: 40.h,
                  ),
                  Gap(10.h),
                  Text(
                    widget.job.name ?? 'Job',
                    style: blackTextStyle.copyWith(
                      fontSize: 16.sp,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
            if (isSelected == true)
              Padding(
                padding: const EdgeInsets.all(12),
                child: Icon(
                  Icons.check_circle_rounded,
                  size: 22,
                  color: colorPrimary,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
