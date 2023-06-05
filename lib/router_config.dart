import 'package:furnit_ar/core/constants/app_routes.dart';
import 'package:go_router/go_router.dart';

import 'presentation/splash/views/splash_view.dart';

class AppRouter {
  static final _router = GoRouter(
      initialLocation: AppRoutes.intialRoute,
      debugLogDiagnostics: true,
      routes: [
        GoRoute(
          path: AppRoutes.intialRoute,
          builder: (context, state) => const SplashView(),
        ),
      ]);

  static GoRouter get router => _router;
}
