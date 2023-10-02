import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:job_finder/data/data_dummy/latest_job_option_data.dart';
import 'package:job_finder/data/data_dummy/recommendation_job_data.dart';
import 'package:job_finder/data/models/vacancy_model.dart';
import 'package:job_finder/utils/app_theme.dart';
import 'package:job_finder/utils/assets.gen.dart';

part 'package:job_finder/presentation/widgets/latest_job_item.dart';
part 'package:job_finder/presentation/widgets/recommendation_job_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Gap(
              defaultMargin.h * 1.5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, Rifki',
                        style: blackTextStyle.copyWith(
                          fontSize: 16.sp,
                          fontWeight: bold,
                        ),
                      ),
                      Gap(2.h),
                      Text(
                        'Find Your Dream Job',
                        style: blackTextStyle.copyWith(
                          fontSize: 20.sp,
                          fontWeight: bold,
                        ),
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    Assets.svg.notification,
                    width: 22.h,
                    height: 22.w,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(defaultMargin),
              child: SizedBox(
                height: 38.h,
                child: TextFormField(
                  controller: searchController,
                  style: greyTextStyle.copyWith(
                    fontSize: 12.sp,
                  ),
                  decoration: InputDecoration(
                    fillColor: colorBlueLight,
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 8.0,
                    ), // Adjust the height here
                    prefixIcon: Container(
                      padding: const EdgeInsets.all(14),
                      height: 20.h,
                      width: 20.w,
                      child: SvgPicture.asset(
                        Assets.svg.search,
                        height: 12.h,
                        width: 12.w,
                      ),
                    ), // Prefix icon
                    suffixIcon: Container(
                      padding: const EdgeInsets.all(14),
                      height: 20.h,
                      width: 20.w,
                      child: SvgPicture.asset(
                        Assets.svg.candle,
                        height: 12.h,
                        width: 12.w,
                      ),
                    ),
                    hintText: 'Search Job',
                    hintStyle: greyTextStyle.copyWith(
                      fontSize: 14.sp,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: colorGrey.withOpacity(0.4),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      borderSide: BorderSide(
                        width: 0.5,
                        color: colorPrimary,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Latest Vacancies',
                    style: blackTextStyle.copyWith(
                      fontSize: 18.sp,
                      fontWeight: bold,
                    ),
                  ),
                  Text(
                    'See All',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14.sp,
                      fontWeight: bold,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 190.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal, // Set horizontal scrolling
                itemCount: latestJobOptions.length,
                itemBuilder: (BuildContext context, int index) {
                  return LatestJobItem(
                    vacancy: latestJobOptions[index],
                    index: index,
                    size: latestJobOptions.length,
                  );
                },
              ),
            ),
            Gap(defaultMargin.h),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommendations',
                    style: blackTextStyle.copyWith(
                      fontSize: 18.sp,
                      fontWeight: bold,
                    ),
                  ),
                  Text(
                    'See All',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14.sp,
                      fontWeight: bold,
                    ),
                  )
                ],
              ),
            ),
            ListView.builder(
              itemCount: recommedationJobOptions.length,
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
                vertical: 16,
              ),
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return RecommendationJobItem(
                  vacancy: recommedationJobOptions[index],
                  index: index,
                  size: recommedationJobOptions.length,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
