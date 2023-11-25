import 'package:go_router/go_router.dart';
import 'package:quranapp/features/Azkar/presentation/viewes/Azkar_View_Details.dart';
import 'package:quranapp/features/Home/Presentation/Viwes/DetailsView.dart';
import 'package:quranapp/features/Main_Page/Main_page.dart';

import '../../features/Splash/Presentation/Views/Splash_view.dart';

abstract class AppRouter {
  static const KMainView = '/mainiew';
  static const KDetailsView = '/DetailsView';
  static const KAzkarDetailsView = '/AzkarDetailsView';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
          path: '/', builder: (context, GoRouterState state) => Spalsh_View(),),
      GoRoute(
          path: KMainView,
          builder: (context, GoRouterState state) => MainPage(),),
      GoRoute(
        path: KDetailsView,
        builder: (context, GoRouterState state) => DetailsView(),
      ),
      GoRoute(path:KAzkarDetailsView,
      builder: (context, GoRouterState state) => AzkarViewDetails(),),
    ],
  );
}
