part of 'package:job_finder/presentation/pages/detail_vacancy_page.dart';

class RequirementList extends StatefulWidget {
  const RequirementList({
    super.key,
    required this.requirement,
  });

  final List<String>? requirement;

  @override
  State<RequirementList> createState() => _RequirementListState();
}

class _RequirementListState extends State<RequirementList> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          itemCount: isExpanded ? widget.requirement?.length : 3,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Row(
              children: [
                Flexible(
                  child: Icon(
                    Icons.circle,
                    size: 6.h,
                    color: colorGrey,
                  ),
                ),
                Gap(16.w),
                Flexible(
                  flex: 100,
                  child: Padding(
                    padding: EdgeInsets.only(top: 6.h),
                    child: Text(
                      widget.requirement?[index] ?? '',
                      style: greyTextStyle.copyWith(
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        ),
        if ((widget.requirement?.length ?? 0) > 2)
          SizedBox(
            height: 28.h,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: colorPurpleLight,
              ),
              onPressed: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              child: Text(
                isExpanded ? 'Show Less' : 'Read More',
                style: primaryTextStyle,
              ),
            ),
          ),
      ],
    );
  }
}
