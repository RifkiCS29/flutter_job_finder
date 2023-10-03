import 'package:go_router/go_router.dart';
import 'package:job_finder/data/models/vacancy_model.dart';
import 'package:job_finder/presentation/pages/pages.dart';

class AppRouter {
  static final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const IntroductionPage(),
      ),
      GoRoute(
        path: '/choose_jobs',
        builder: (context, state) => const ChooseJobsPage(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/detail_vacancy',
        builder: (context, state) => DetailVacancyPage(
          data: state.extra as VacancyModel,
        ),
      ),
      GoRoute(
        path: '/notifications',
        builder: (context, state) => const NotificationsPage(),
      ),
    ],
  );

  GoRouter get router => _router;
}
