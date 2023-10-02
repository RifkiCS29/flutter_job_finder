part of 'package:job_finder/presentation/pages/home_page.dart';

class RecommendationJobItem extends StatefulWidget {
  const RecommendationJobItem({
    super.key,
    required this.vacancy,
    required this.index,
    required this.size,
  });

  final VacancyModel vacancy;
  final int index;
  final int size;

  @override
  State<RecommendationJobItem> createState() => _RecommendationJobItemState();
}

class _RecommendationJobItemState extends State<RecommendationJobItem> {
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
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(
              0,
              widget.index == 0 ? 0 : 12,
              0,
              widget.index == widget.size - 1 ? 12 : 0,
            ),
            padding: const EdgeInsets.all(12),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      widget.vacancy.assets ?? Assets.png.flip.path,
                      height: 64.h,
                      width: 64.w,
                    ),
                    Gap(8.w),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.575,
                      child: Column(
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
                          Gap(
                            8.h,
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
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: widget.index == 0 ? 12 : 24,
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
                height: 18,
                width: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
