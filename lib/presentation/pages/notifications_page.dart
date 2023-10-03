import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:job_finder/data/data_dummy/notification_data.dart';
import 'package:job_finder/utils/app_theme.dart';
import 'package:job_finder/utils/assets.gen.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

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
          'Notifications',
          style: blackTextStyle.copyWith(
            fontSize: 16.sp,
            fontWeight: bold,
            letterSpacing: 0.5,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        itemCount: notificationData.length,
        separatorBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 12.h),
          child: Divider(
            height: 1,
            color: colorGrey.withOpacity(0.4),
          ),
        ),
        itemBuilder: (context, index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                notificationData[index].assets ?? Assets.png.flip.path,
                height: 64.h,
                width: 64.w,
              ),
              Gap(8.w),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      notificationData[index].description ?? 'Description',
                      style: blackTextStyle.copyWith(
                        fontSize: 12.sp,
                        fontWeight: semiBold,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 1,
                    ),
                    Gap(
                      4.h,
                    ),
                    Text(
                      notificationData[index].company ?? 'Company',
                      style: greyTextStyle.copyWith(
                        fontSize: 12.sp,
                        fontWeight: regular,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 1,
                    ),
                    Gap(
                      4.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          Assets.svg.calendar,
                          height: 12.h,
                        ),
                        Gap(6.w),
                        Expanded(
                          child: Text(
                            notificationData[index].dateAt ?? 'Date',
                            style: greyTextStyle.copyWith(
                              fontSize: 12.sp,
                              fontWeight: regular,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    if (notificationData[index].step == 'interview_user' ||
                        notificationData[index].step == 'interview_hrd')
                      Column(
                        children: [
                          Gap(10.h),
                          Row(
                            children: [
                              SizedBox(
                                height: 28.h,
                                width: MediaQuery.of(context).size.width * 0.25,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: colorWhite,
                                    foregroundColor:
                                        colorPrimary.withOpacity(0.5),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: colorPrimary,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        24,
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    'Deny',
                                    style: primaryTextStyle.copyWith(
                                      fontWeight: regular,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                ),
                              ),
                              Gap(8.w),
                              SizedBox(
                                height: 28.h,
                                width:
                                    MediaQuery.of(context).size.width * 0.265,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: colorPrimary,
                                    foregroundColor: colorPurpleLight,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        24,
                                      ), // Adjust the radius as needed
                                    ),
                                  ),
                                  child: Text(
                                    'Approve',
                                    style: whiteTextStyle.copyWith(
                                        fontWeight: regular, fontSize: 10.sp),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
