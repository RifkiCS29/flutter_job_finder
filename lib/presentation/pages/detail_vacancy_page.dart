import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:job_finder/data/models/vacancy_model.dart';
import 'package:job_finder/utils/app_theme.dart';
import 'package:job_finder/utils/assets.gen.dart';

part 'package:job_finder/presentation/widgets/description_list.dart';
part 'package:job_finder/presentation/widgets/requirement_list.dart';

class DetailVacancyPage extends StatelessWidget {
  const DetailVacancyPage({
    super.key,
    required this.data,
  });

  final VacancyModel data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorWhite,
        automaticallyImplyLeading: true,
        leading: InkWell(
          hoverColor: colorWhite,
          onTap: () => context.pop(),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
            ),
            child: SvgPicture.asset(
              Assets.svg.back,
            ),
          ),
        ),
        title: Text(
          'Job Detail',
          style: blackTextStyle.copyWith(
            fontSize: 16.sp,
            fontWeight: bold,
            letterSpacing: 0.5,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          Gap(6.h),
          Image.asset(
            data.assets ?? Assets.png.flip.path,
            height: 64.h,
            width: 64.w,
          ),
          Gap(10.h),
          Text(
            data.name ?? 'Vacancy',
            style: blackTextStyle.copyWith(
              fontSize: 14.sp,
              fontWeight: semiBold,
              overflow: TextOverflow.ellipsis,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
          ),
          Gap(10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    Assets.svg.verified,
                    height: 16.h,
                  ),
                  Gap(6.w),
                  Text(
                    data.company ?? 'Company',
                    style: greyTextStyle.copyWith(
                      fontSize: 14.sp,
                      fontWeight: regular,
                    ),
                  ),
                ],
              ),
              Gap(8.w),
              Icon(
                Icons.circle,
                size: 5.w,
                color: colorGrey,
              ),
              Gap(8.w),
              Text(
                data.location ?? 'Location',
                style: greyTextStyle.copyWith(
                  fontSize: 14.sp,
                  fontWeight: regular,
                ),
              ),
              Gap(8.w),
              Icon(
                Icons.circle,
                size: 5.w,
                color: colorGrey,
              ),
              Gap(8.w),
              Text(
                data.postedAt ?? 'One hour ago',
                style: greyTextStyle.copyWith(
                  fontSize: 14.sp,
                  fontWeight: regular,
                ),
              ),
            ],
          ),
          Gap(10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: colorPurpleLight,
                  borderRadius: BorderRadius.circular(
                    4,
                  ),
                ),
                child: Text(
                  data.workType ?? 'Work Type',
                  style: primaryTextStyle.copyWith(
                    fontSize: 12.sp,
                    fontWeight: semiBold,
                  ),
                ),
              ),
              Gap(8.w),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: colorPurpleLight,
                  borderRadius: BorderRadius.circular(
                    4,
                  ),
                ),
                child: Text(
                  data.level ?? 'Level',
                  style: primaryTextStyle.copyWith(
                    fontSize: 12.sp,
                    fontWeight: semiBold,
                  ),
                ),
              ),
              Gap(8.w),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: colorPurpleLight,
                  borderRadius: BorderRadius.circular(
                    4,
                  ),
                ),
                child: Text(
                  data.status ?? 'status',
                  style: primaryTextStyle.copyWith(
                    fontSize: 12.sp,
                    fontWeight: semiBold,
                  ),
                ),
              ),
            ],
          ),
          Gap(defaultMargin.h),
          Text(
            'Job Description',
            style: blackTextStyle.copyWith(
              fontSize: 14.sp,
              fontWeight: bold,
            ),
          ),
          DescriptionList(
            description: data.description,
          ),
          Gap(defaultMargin.h),
          Text(
            'Requirements',
            style: blackTextStyle.copyWith(
              fontSize: 14.sp,
              fontWeight: bold,
            ),
          ),
          RequirementList(
            requirement: data.requirement,
          ),
          Gap(defaultMargin.h),
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
                'Apply',
                style: whiteTextStyle.copyWith(
                  fontWeight: bold,
                ),
              ),
              Gap(8.w),
              SvgPicture.asset(
                Assets.svg.apply,
                height: 16.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
