part of 'package:job_finder/presentation/pages/choose_jobs_page.dart';

class JobOptions extends StatefulWidget {
  const JobOptions({
    super.key,
    required this.job,
  });

  final JobModel job;

  @override
  State<JobOptions> createState() => _JobOptionState();
}

class _JobOptionState extends State<JobOptions> {
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
