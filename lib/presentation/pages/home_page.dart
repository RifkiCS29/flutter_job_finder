import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
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
          company: 'Flip',
          name: 'UX Research',
          assets: Assets.png.flip.path,
          location: 'Jakarta Selatan',
          workType: 'Remote',
          level: 'Middle Level',
          status: 'Full Time',
          postedAt: '1 hours ago',
          description: [
            "Conduct user research activities, including usability testing, user interviews, surveys, and ethnographic studies, to understand user behaviors, motivations, and pain points.",
            "Collect and analyze both qualitative and quantitative data to derive actionable insights. Translate research findings into actionable recommendations for product and design teams.",
            "Plan, conduct, and analyze usability testing sessions to evaluate product usability and identify areas for improvement.",
            "Create and maintain user personas to ensure a user-centered design approach.",
            "Stay up-to-date with industry trends and conduct competitive analysis to identify opportunities and areas for differentiation.",
            "Work closely with product managers, designers, and developers to integrate user research findings into product development cycles. Collaborate on ideation, design, and testing phases.",
            "Coordinate and manage user testing sessions, recruit participants, and ensure a smooth research process.",
            "Generate and present comprehensive usability reports, highlighting key findings and actionable recommendations.",
            "Advocate for accessibility and inclusivity in design and ensure products meet relevant accessibility standards.",
          ],
          requirement: [
            "Bachelor's degree in Human-Computer Interaction (HCI), Psychology, UX Design, or a related field.",
            "Proven experience in UX research, usability testing, and user-centered design principles.",
            "Strong knowledge of UX research methodologies, including user interviews, surveys, card sorting, and user testing.",
            "Proficiency in UX research tools and software, such as UsabilityHub, Optimal Workshop, or similar platforms.",
            "Ability to plan and conduct user research studies independently, from research design to data analysis.",
            "Excellent analytical skills to interpret and draw insights from user data and feedback.",
            "Experience in creating user personas, journey maps, and usability reports.",
            "Collaborative mindset with the ability to work closely with designers, developers, and product managers.",
            "Effective communication skills to present research findings and insights to cross-functional teams.",
            "Familiarity with agile development methodologies and the ability to integrate UX research into the development process.",
            "Strong problem-solving skills and a keen eye for detail.",
            "Flexibility to adapt to changing project requirements and priorities.",
            "A portfolio of previous UX research projects and case studies is a plus.",
          ]),
      VacancyModel(
        company: 'Tokopedia',
        name: 'Android Developer',
        assets: Assets.png.tokped.path,
        location: 'Jakarta Pusat',
        workType: 'Hybrid',
        level: 'Senior Level',
        status: 'Full Time',
        postedAt: '2 hours ago',
        description: [
          "Design and develop Android applications that meet user requirements and business objectives.",
          "Collaborate with cross-functional teams, including designers, product managers, and backend developers, to create cohesive and user-friendly mobile applications.",
          "Write clean, maintainable, and efficient code following industry best practices.",
          "Ensure the performance, quality, and responsiveness of applications by identifying and addressing bottlenecks and bugs.",
          "Stay up-to-date with the latest Android development trends, technologies, and best practices.",
          "Debug and troubleshoot issues to optimize application performance and stability.",
          "Continuously improve code quality through code reviews and refactoring.",
          "Implement and maintain unit and UI tests to ensure the reliability of the applications.",
          "Work on performance optimization and memory management.",
          "Collaborate in the planning and execution of software development sprints and releases.",
          "Contribute to the technical documentation of the application codebase.",
          "Keep abreast of industry trends and emerging technologies to ensure our applications remain competitive."
        ],
        requirement: [
          "Bachelor's degree in Computer Science, Software Engineering, or a related field (or equivalent work experience).",
          "Proven experience as an Android Developer with a strong portfolio of Android applications.",
          "Proficiency in Java and Kotlin programming languages.",
          "Strong knowledge of Android development frameworks, libraries, and tools.",
          "Familiarity with RESTful APIs and JSON.",
          "Experience with version control systems, such as Git.",
          "Solid understanding of Android architecture components, UI/UX design principles, and Material Design.",
          "Excellent problem-solving and debugging skills.",
          "Ability to work independently and collaboratively in a team environment.",
          "Strong communication skills and the ability to explain technical concepts to non-technical stakeholders.",
          "Knowledge of agile software development methodologies is a plus.",
          "Experience with continuous integration and continuous deployment (CI/CD) pipelines is a plus.",
          "Familiarity with app security best practices is a plus.",
          "Experience in mentoring and providing technical guidance to junior developers is a plus.",
          "Up-to-date knowledge of the latest Android trends and technologies.",
          "Passion for building high-quality, performance-driven Android applications.",
        ],
      ),
      VacancyModel(
        company: 'Traveloka',
        name: 'Frontend Developer',
        assets: Assets.png.traveloka.path,
        location: 'Jakarta Pusat',
        workType: 'Hybrid',
        level: 'Junior Level',
        status: 'Internship',
        postedAt: '2 hours ago',
        description: [
          "Collaborate with the design team to translate UI/UX designs into responsive web pages using HTML, CSS, and JavaScript.",
          "Write clean, well-structured, and maintainable code to ensure the highest quality of web applications.",
          "Work closely with senior developers to learn and implement best practices in front-end development.",
          "Assist in troubleshooting and debugging issues to ensure the functionality and performance of web applications.",
          "Stay updated with the latest front-end development trends, tools, and technologies.",
          "Participate in code reviews to improve code quality and knowledge sharing.",
          "Optimize web applications for maximum speed and scalability.",
          "Ensure cross-browser and cross-device compatibility.",
          "Collaborate with back-end developers to integrate front-end components with server-side logic.",
          "Contribute to the documentation of front-end code and processes."
        ],
        requirement: [
          "Bachelor's degree in Computer Science, Web Development, or a related field (or equivalent work experience).",
          "Strong understanding of HTML, CSS, and JavaScript.",
          "Familiarity with front-end libraries and frameworks (e.g., React, Angular, Vue.js) is a plus.",
          "Basic knowledge of version control systems like Git.",
          "Eagerness to learn and stay updated with the latest web development trends and best practices.",
          "Strong problem-solving skills and attention to detail.",
          "Excellent communication and teamwork skills.",
          "Ability to work in a fast-paced and collaborative environment.",
          "Previous experience or personal projects showcasing your front-end development skills is a plus.",
          "Understanding of responsive web design and mobile-first development principles.",
          "Basic knowledge of web performance optimization techniques.",
          "Passion for creating user-friendly and visually appealing web interfaces.",
          "Willingness to collaborate with cross-functional teams to achieve project goals.",
          "Aptitude for learning and adopting new technologies as needed.",
        ],
      ),
    ];

    List<VacancyModel> recommedationJobOptions = [
      VacancyModel(
        company: 'Elux Space',
        name: 'UI/UX Designer',
        assets: Assets.png.elux.path,
        location: 'Malang',
        workType: 'Onsite',
        level: 'Middle Level',
        status: 'Part Time',
        postedAt: '3 days ago',
        description: [
          "Collaborate with product managers and developers to understand project goals and requirements.",
          "Create user-centered design solutions, considering user needs, business goals, and industry best practices.",
          "Design and prototype user interfaces for web and mobile applications.",
          "Conduct user research, usability testing, and gather feedback to inform design decisions.",
          "Iterate on designs based on user feedback and usability testing results.",
          "Create wireframes, user flows, and interactive prototypes to communicate design ideas.",
          "Work with design tools such as Adobe XD, Sketch, Figma, or similar software.",
          "Collaborate with front-end developers to ensure the implementation of designs matches the original vision.",
          "Stay updated with the latest design trends, tools, and best practices.",
          "Present and explain design concepts and solutions to stakeholders.",
          "Work in an agile development environment and participate in design sprints.",
          "Ensure a consistent and visually appealing user experience across all digital platforms.",
        ],
        requirement: [
          "Bachelor's degree in UI/UX Design, Human-Computer Interaction, Graphic Design, or a related field.",
          "Proven experience as a UI/UX Designer with a strong portfolio showcasing your design work.",
          "Proficiency in design tools such as Adobe XD, Sketch, Figma, or similar software.",
          "Solid understanding of user-centered design principles and user experience best practices.",
          "Ability to create wireframes, prototypes, and user flows to visualize design concepts.",
          "Experience conducting user research, usability testing, and gathering user feedback.",
          "Strong knowledge of responsive design for web and mobile platforms.",
          "Collaborative mindset and the ability to work closely with cross-functional teams, including developers and product managers.",
          "Excellent communication and presentation skills to convey design concepts and rationale.",
          "Attention to detail and a passion for crafting visually appealing and user-friendly interfaces.",
          "Familiarity with interaction design and micro-interactions to enhance user engagement.",
          "Ability to stay updated with design trends, emerging technologies, and industry best practices.",
          "Experience creating and maintaining design systems is a plus.",
          "A willingness to iterate and refine designs based on user feedback and usability testing results.",
        ],
      ),
      VacancyModel(
        company: 'Gojek',
        name: 'Software Engineer Lead',
        assets: Assets.png.gojek.path,
        location: 'Jakarta Pusat',
        workType: 'Remote',
        level: 'Senior Level',
        status: 'Full Time',
        postedAt: '1 week ago',
        description: [
          "Lead and mentor a team of software engineers, providing technical guidance and support.",
          "Architect, design, and develop software solutions, ensuring they meet business objectives and technical requirements.",
          "Collaborate with product managers, stakeholders, and cross-functional teams to define project goals and deliverables.",
          "Review code and provide feedback to team members to maintain code quality and best practices.",
          "Participate in code reviews and ensure adherence to coding standards and design principles.",
          "Identify technical challenges and propose innovative solutions.",
          "Coordinate with other teams, such as QA and DevOps, to ensure seamless project execution.",
          "Stay updated with the latest software development trends, technologies, and best practices.",
          "Drive software development processes, including agile methodologies, and contribute to continuous improvement.",
          "Ensure the scalability, performance, and security of software applications.",
          "Troubleshoot and debug complex technical issues, guiding the team in resolving them efficiently.",
          "Lead by example, promoting a culture of collaboration, innovation, and excellence within the engineering team.",
        ],
        requirement: [
          "Bachelor's degree in Computer Science or a related field (Master's degree is a plus).",
          "Proven experience in software development, with a strong portfolio of projects and leadership roles.",
          "In-depth knowledge of programming languages and technologies relevant to the project (e.g., Java, Python, JavaScript, etc.).",
          "Experience leading and mentoring software development teams.",
          "Strong problem-solving and critical-thinking skills.",
          "Excellent communication and interpersonal skills to collaborate with cross-functional teams and stakeholders.",
          "Ability to set technical direction, make architectural decisions, and drive project development.",
          "Experience with agile development methodologies and project management tools (e.g., Scrum, JIRA, etc.).",
          "Strong understanding of software design principles and best practices.",
          "Experience with software testing, quality assurance, and continuous integration/continuous deployment (CI/CD).",
          "Ability to analyze technical challenges and provide innovative solutions.",
          "Familiarity with cloud computing platforms (e.g., AWS, Azure, Google Cloud) and containerization (e.g., Docker, Kubernetes).",
          "A commitment to staying updated with emerging technologies and industry trends.",
          "Leadership skills to inspire and motivate development teams, fostering a collaborative and innovative environment.",
        ],
      ),
      VacancyModel(
        company: 'Tokopedia',
        name: 'Android Developer',
        assets: Assets.png.tokped.path,
        location: 'Jakarta Pusat',
        workType: 'Hybrid',
        level: 'Senior Level',
        status: 'Full Time',
        postedAt: '2 hours ago',
        description: [
          "Design and develop Android applications that meet user requirements and business objectives.",
          "Collaborate with cross-functional teams, including designers, product managers, and backend developers, to create cohesive and user-friendly mobile applications.",
          "Write clean, maintainable, and efficient code following industry best practices.",
          "Ensure the performance, quality, and responsiveness of applications by identifying and addressing bottlenecks and bugs.",
          "Stay up-to-date with the latest Android development trends, technologies, and best practices.",
          "Debug and troubleshoot issues to optimize application performance and stability.",
          "Continuously improve code quality through code reviews and refactoring.",
          "Implement and maintain unit and UI tests to ensure the reliability of the applications.",
          "Work on performance optimization and memory management.",
          "Collaborate in the planning and execution of software development sprints and releases.",
          "Contribute to the technical documentation of the application codebase.",
          "Keep abreast of industry trends and emerging technologies to ensure our applications remain competitive."
        ],
        requirement: [
          "Bachelor's degree in Computer Science, Software Engineering, or a related field (or equivalent work experience).",
          "Proven experience as an Android Developer with a strong portfolio of Android applications.",
          "Proficiency in Java and Kotlin programming languages.",
          "Strong knowledge of Android development frameworks, libraries, and tools.",
          "Familiarity with RESTful APIs and JSON.",
          "Experience with version control systems, such as Git.",
          "Solid understanding of Android architecture components, UI/UX design principles, and Material Design.",
          "Excellent problem-solving and debugging skills.",
          "Ability to work independently and collaboratively in a team environment.",
          "Strong communication skills and the ability to explain technical concepts to non-technical stakeholders.",
          "Knowledge of agile software development methodologies is a plus.",
          "Experience with continuous integration and continuous deployment (CI/CD) pipelines is a plus.",
          "Familiarity with app security best practices is a plus.",
          "Experience in mentoring and providing technical guidance to junior developers is a plus.",
          "Up-to-date knowledge of the latest Android trends and technologies.",
          "Passion for building high-quality, performance-driven Android applications.",
        ],
      ),
      VacancyModel(
        company: 'Traveloka',
        name: 'Frontend Developer',
        assets: Assets.png.traveloka.path,
        location: 'Jakarta Pusat',
        workType: 'Hybrid',
        level: 'Junior Level',
        status: 'Intership',
        postedAt: '2 hours ago',
        description: [
          "Collaborate with the design team to translate UI/UX designs into responsive web pages using HTML, CSS, and JavaScript.",
          "Write clean, well-structured, and maintainable code to ensure the highest quality of web applications.",
          "Work closely with senior developers to learn and implement best practices in front-end development.",
          "Assist in troubleshooting and debugging issues to ensure the functionality and performance of web applications.",
          "Stay updated with the latest front-end development trends, tools, and technologies.",
          "Participate in code reviews to improve code quality and knowledge sharing.",
          "Optimize web applications for maximum speed and scalability.",
          "Ensure cross-browser and cross-device compatibility.",
          "Collaborate with back-end developers to integrate front-end components with server-side logic.",
          "Contribute to the documentation of front-end code and processes."
        ],
        requirement: [
          "Bachelor's degree in Computer Science, Web Development, or a related field (or equivalent work experience).",
          "Strong understanding of HTML, CSS, and JavaScript.",
          "Familiarity with front-end libraries and frameworks (e.g., React, Angular, Vue.js) is a plus.",
          "Basic knowledge of version control systems like Git.",
          "Eagerness to learn and stay updated with the latest web development trends and best practices.",
          "Strong problem-solving skills and attention to detail.",
          "Excellent communication and teamwork skills.",
          "Ability to work in a fast-paced and collaborative environment.",
          "Previous experience or personal projects showcasing your front-end development skills is a plus.",
          "Understanding of responsive web design and mobile-first development principles.",
          "Basic knowledge of web performance optimization techniques.",
          "Passion for creating user-friendly and visually appealing web interfaces.",
          "Willingness to collaborate with cross-functional teams to achieve project goals.",
          "Aptitude for learning and adopting new technologies as needed.",
        ],
      ),
      VacancyModel(
        company: 'Flip',
        name: 'Mobile Developer (React Native)',
        assets: Assets.png.flip.path,
        location: 'Jakarta Pusat',
        workType: 'Remote',
        level: 'Junior Level',
        status: 'Internship',
        postedAt: '5 hours ago',
        description: [
          "Develop cross-platform mobile applications using React Native framework.",
          "Collaborate with product managers and designers to understand project requirements and user stories.",
          "Write clean and maintainable code, ensuring adherence to coding standards and best practices.",
          "Optimize mobile applications for performance, responsiveness, and scalability.",
          "Work with RESTful APIs to integrate backend services and data into mobile applications.",
          "Participate in the full software development lifecycle, from design to testing and deployment.",
          "Troubleshoot and debug mobile app issues, ensuring smooth functionality.",
          "Stay updated with the latest React Native and mobile development trends and technologies.",
          "Contribute to code reviews, providing constructive feedback to team members.",
          "Collaborate with other mobile developers to share knowledge and solutions.",
          "Ensure cross-platform compatibility and consistent user experiences.",
          "Work in an agile development environment, participating in sprint planning and daily stand-ups.",
          "Stay current with emerging mobile technologies and recommend their adoption when appropriate.",
        ],
        requirement: [
          "Bachelor's degree in Computer Science or a related field (or equivalent work experience).",
          "Proven experience in mobile app development with React Native.",
          "Strong knowledge of JavaScript and React Native framework.",
          "Experience with mobile app development for both iOS and Android platforms.",
          "Familiarity with state management libraries like Redux or MobX.",
          "Experience with RESTful APIs and asynchronous programming.",
          "Proficiency in HTML, CSS, and responsive design for mobile.",
          "Solid understanding of mobile app architecture and design patterns.",
          "Ability to optimize mobile apps for performance and user experience.",
          "Experience with version control systems like Git.",
          "Strong problem-solving and debugging skills.",
          "Effective communication and teamwork skills.",
          "Ability to work in an agile development environment and meet project deadlines.",
          "Passion for mobile app development and staying updated with the latest React Native trends and best practices.",
          "Familiarity with app deployment processes to app stores (Google Play Store, Apple App Store).",
        ],
      ),
    ];

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
                      height: 54.h,
                      width: 54.w,
                    ),
                    Gap(8.w),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.365,
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
                        const Gap(8),
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
