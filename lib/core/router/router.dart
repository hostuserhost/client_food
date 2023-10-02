import 'package:auto_route/auto_route.dart';
import 'package:client_food/core/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          path: '/dashboard',
          page: NavRoute.page,
          children: [
            AutoRoute(page: MenuRoute.page),
            AutoRoute(page: BascketRoute.page),
            AutoRoute(page: AboutRoute.page),
          ],
        ),
      ];
}
