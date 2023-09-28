import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:job_finder/data/models/vacancy_model.dart';
import 'package:job_finder/utils/app_theme.dart';
import 'package:job_finder/utils/assets.gen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();

    List<VacancyModel> latestJobOptions = [
      VacancyModel(
        name: 'UX Research',
        assets: Assets.png.flip.path,
        location: 'Jakarta Selatan',
        workType: 'Remote',
        level: 'Middle Level',
        postedAt: '1 hours ago',
      ),
      VacancyModel(
        name: 'Android Developer',
        assets: Assets.png.tokped.path,
        location: 'Jakarta Pusat',
        workType: 'Hybrid',
        level: 'Senior Level',
        postedAt: '2 hours ago',
      ),
      VacancyModel(
        name: 'Frontend Developer',
        assets: Assets.png.traveloka.path,
        location: 'Jakarta Pusat',
        workType: 'Hybrid',
        level: 'Junior Level',
        postedAt: '2 hours ago',
      ),
    ];

    List<VacancyModel> recommedationJobOptions = [
      VacancyModel(
        name: 'UI/UX Designer',
        assets: Assets.png.elux.path,
        location: 'Malang',
        workType: 'Onsite',
        level: 'Middle Level',
        postedAt: '3 days ago',
      ),
      VacancyModel(
        name: 'Software Engineer Lead',
        assets: Assets.png.gojek.path,
        location: 'Jakarta Pusat',
        workType: 'Remote',
        level: 'Senior Level',
        postedAt: '1 week ago',
      ),
      VacancyModel(
        name: 'Android Developer',
        assets: Assets.png.tokped.path,
        location: 'Jakarta Pusat',
        workType: 'Hybrid',
        level: 'Senior Level',
        postedAt: '2 hours ago',
      ),
      VacancyModel(
        name: 'Frontend Developer',
        assets: Assets.png.traveloka.path,
        location: 'Jakarta Pusat',
        workType: 'Hybrid',
        level: 'Junior Level',
        postedAt: '2 hours ago',
      ),
      VacancyModel(
        name: 'Mobile Developer (React Native)',
        assets: Assets.png.flip.path,
        location: 'Jakarta Pusat',
        workType: 'Remote',
        level: 'Junior Level',
        postedAt: '5 hours ago',
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: defaultMargin * 1.5,
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
                          fontSize: 16,
                          fontWeight: bold,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'Find Your Dream Job',
                        style: blackTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: bold,
                        ),
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    Assets.svg.notification,
                    width: 22,
                    height: 22,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(defaultMargin),
              child: SizedBox(
                height: 42,
                child: TextFormField(
                  controller: searchController,
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                  decoration: InputDecoration(
                    fillColor: colorBlueLight,
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 8.0,
                    ), // Adjust the height here
                    prefixIcon: Container(
                      padding: const EdgeInsets.all(12),
                      height: 20,
                      width: 20,
                      child: SvgPicture.asset(
                        Assets.svg.search,
                        height: 12,
                        width: 12,
                      ),
                    ), // Prefix icon
                    suffixIcon: Container(
                      padding: const EdgeInsets.all(12),
                      height: 20,
                      width: 20,
                      child: SvgPicture.asset(
                        Assets.svg.candle,
                        height: 12,
                        width: 12,
                      ),
                    ),
                    hintText: 'Search Job',
                    hintStyle: greyTextStyle.copyWith(
                      fontSize: 12,
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
                      fontSize: 18,
                      fontWeight: bold,
                    ),
                  ),
                  Text(
                    'See All',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: bold,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 205,
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
            SizedBox(
              height: defaultMargin,
            ),
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
                      fontSize: 18,
                      fontWeight: bold,
                    ),
                  ),
                  Text(
                    'See All',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
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
    return Stack(
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
                    height: 60,
                    width: 60,
                  ),
                  const SizedBox(width: 8),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.365,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.vacancy.name ?? 'Vacancy',
                          style: blackTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: semiBold,
                              overflow: TextOverflow.ellipsis),
                          maxLines: 1,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          widget.vacancy.location ?? 'Location',
                          style: greyTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: regular,
                              overflow: TextOverflow.ellipsis),
                          maxLines: 1,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
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
                        fontSize: 12,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
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
                        fontSize: 12,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    Assets.svg.clock,
                    height: 14,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    widget.vacancy.postedAt ?? 'Posted At',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 32,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colorPrimary,
                    foregroundColor: colorPurpleLight,
                    padding: const EdgeInsets.symmetric(
                      vertical: 4,
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
                      const SizedBox(width: 8),
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
              height: 18,
              width: 18,
            ),
          ),
        ),
      ],
    );
  }
}

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
    return Stack(
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
                    height: 64,
                    width: 64,
                  ),
                  const SizedBox(width: 8),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.575,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.vacancy.name ?? 'Vacancy',
                          style: blackTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: semiBold,
                              overflow: TextOverflow.ellipsis),
                          maxLines: 1,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          widget.vacancy.location ?? 'Location',
                          style: greyTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: regular,
                              overflow: TextOverflow.ellipsis),
                          maxLines: 1,
                        ),
                        const SizedBox(
                          height: 8,
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
                                  fontSize: 12,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
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
                                  fontSize: 12,
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
    );
  }
}
