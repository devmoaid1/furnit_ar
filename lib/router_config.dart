import 'package:furnit_ar/core/constants/app_routes.dart';
import 'package:furnit_ar/presentation/register/views/register_view.dart';
import 'package:go_router/go_router.dart';

import 'presentation/splash/views/splash_view.dart';

class AppRouter {
  static final _router = GoRouter(
      initialLocation: AppRoutes.intialRoute,
      debugLogDiagnostics: true,
      routes: [
        GoRoute(
          name: AppRoutes.intialRoute,
          path: AppRoutes.intialRoute,
          builder: (context, state) => const SplashView(),
        ),
        GoRoute(
          name: AppRoutes.registerRoute,
          path: AppRoutes.registerRoute,
          builder: (context, state) => const RegisterView(),
        ),
      ]);

  static GoRouter get router => _router;
}
