part of 'package:job_finder/presentation/pages/home_page.dart';

class LatestJobItem extends StatefulWidget {
  const LatestJobItem({
    super.key,
    required this.vacancy,
    required this.index,
    required this.size,
  });

  final VacancyModel vacancy;
  final int index;
  final int size;

  @override
  State<LatestJobItem> createState() => _LatestJobItemState();
}

class _LatestJobItemState extends State<LatestJobItem> {
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(
          '/detail_vacancy',
          extra: widget.vacancy,
        );
      },
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.65,
            margin: EdgeInsets.fromLTRB(
              widget.index == 0 ? defaultMargin : 8,
              8,
              widget.index == widget.size - 1 ? defaultMargin : 8,
              8,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 12.w,
              vertical: 12.h,
            ),
            decoration: BoxDecoration(
              color: colorWhite,
              borderRadius: BorderRadius.circular(defaultRadius),
              border: Border.all(
                color: colorGrey.withOpacity(0.2),
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
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      widget.vacancy.assets ?? Assets.png.flip.path,
                      height: 54.h,
                      width: 54.w,
                    ),
                    Gap(8.w),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.365,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.vacancy.name ?? 'Vacancy',
                            style: blackTextStyle.copyWith(
                                fontSize: 14.sp,
                                fontWeight: semiBold,
                                overflow: TextOverflow.ellipsis),
                            maxLines: 1,
                          ),
                          Gap(
                            4.h,
                          ),
                          Text(
                            widget.vacancy.location ?? 'Location',
                            style: greyTextStyle.copyWith(
                                fontSize: 14.sp,
                                fontWeight: regular,
                                overflow: TextOverflow.ellipsis),
                            maxLines: 1,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Gap(
                  10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                        widget.vacancy.workType ?? 'Work Type',
                        style: primaryTextStyle.copyWith(
                          fontSize: 12.sp,
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                    Gap(
                      8.w,
                    ),
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
                        widget.vacancy.level ?? 'Level',
                        style: primaryTextStyle.copyWith(
                          fontSize: 12.sp,
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(
                  10.h,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      Assets.svg.clock,
                      height: 14.h,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      widget.vacancy.postedAt ?? 'Posted At',
                      style: greyTextStyle.copyWith(
                        fontSize: 12.sp,
                        fontWeight: regular,
                      ),
                    )
                  ],
                ),
                Gap(
                  8.h,
                ),
                SizedBox(
                  height: 32.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: colorPrimary,
                      foregroundColor: colorPurpleLight,
                      padding: EdgeInsets.symmetric(
                        vertical: 4.h,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          24,
                        ), // Adjust the radius as needed
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
                        SvgPicture.asset(Assets.svg.apply)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: widget.index == widget.size - 1 ? 36 : 20,
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isBookmarked = !isBookmarked;
                });
              },
              child: SvgPicture.asset(
                isBookmarked == true
                    ? Assets.svg.bookmarked
                    : Assets.svg.bookmark,
                height: 18.h,
                width: 18.w,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
