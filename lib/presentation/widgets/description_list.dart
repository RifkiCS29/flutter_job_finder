part of 'package:job_finder/presentation/pages/detail_vacancy_page.dart';

class DescriptionList extends StatefulWidget {
  const DescriptionList({
    super.key,
    required this.description,
  });

  final List<String>? description;

  @override
  State<DescriptionList> createState() => _DescriptionListState();
}

class _DescriptionListState extends State<DescriptionList> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          itemCount: isExpanded ? widget.description?.length : 3,
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
                      widget.description?[index] ?? '',
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
        if ((widget.description?.length ?? 0) > 2)
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
                style: primaryTextStyle.copyWith(
                  fontSize: 11.sp,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
