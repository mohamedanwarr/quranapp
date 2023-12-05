import 'package:go_router/go_router.dart';
import 'package:quranapp/features/Azkar/presentation/viewes/Azkar_View_Details.dart';
import 'package:quranapp/features/Duaa/presentation/viewes/Duaa_Details_view.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/DetailsView.dart';
import 'package:quranapp/features/Main_Page/Main_page.dart';
import 'package:quranapp/features/TimePray/presentation/viewes/TimePray_View.dart';

import '../../features/Splash/Presentation/Views/Splash_view.dart';

abstract class AppRouter {
  static const KMainView = '/mainiew';
  static const KDetailsView = '/DetailsView';
  static const KtimeparyView = '/timeparyView';
  static const KAzkarDetailsView = '/AzkarDetailsView';
  static const KDuaaDetailsView = '/DuaaDetailsView';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, GoRouterState state) => const Spalsh_View(),
      ),
      GoRoute(
        path: KMainView,
        builder: (context, GoRouterState state) => const MainPage(),
      ),
      GoRoute(
        path: KDetailsView,
        builder: (context, GoRouterState state) => const DetailsView(),
      ),
      GoRoute(
        path: KAzkarDetailsView,
        builder: (context, GoRouterState state) => const AzkarViewDetails(),
      ),
      GoRoute(
        path: KDuaaDetailsView,
        builder: (context, GoRouterState state) => const DuaaDetailsView(),
      ),
      GoRoute(path: KtimeparyView,
      builder: (context, GoRouterState state) => const TimePrayView()),
    ],
  );
}
