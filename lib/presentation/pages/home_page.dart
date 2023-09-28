import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:job_finder/utils/app_theme.dart';
import 'package:job_finder/utils/assets.gen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();

    List<Map<String, dynamic>> latestJobOptions = [
      {
        'name': 'UX Research',
        'assets': Assets.svg.flip,
        'location': 'Jakarta Selatan',
        'workType': 'Remote',
        'level': 'Middle Level',
        'postedAt': '1 hours ago'
      },
      {
        'name': 'Android Developer',
        'assets': Assets.svg.tokped,
        'location': 'Jakarta Pusat',
        'workType': 'Hybrid',
        'level': 'Senior Level',
        'postedAt': '2 hours ago'
      },
      {
        'name': 'Frontend Developer',
        'assets': Assets.svg.traveloka,
        'location': 'Jakarta Pusat',
        'workType': 'Hybrid',
        'level': 'Junior Level',
        'postedAt': '2 hours ago'
      },
    ];

    return Scaffold(
      body: ListView(
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
            height: 155,
            child: ListView.builder(
              scrollDirection: Axis.horizontal, // Set horizontal scrolling
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 150.0,
                  margin: EdgeInsets.fromLTRB(
                    index == 0 ? defaultMargin : 8,
                    8,
                    index == 19 ? defaultMargin : 8,
                    8,
                  ),
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'Item $index',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
