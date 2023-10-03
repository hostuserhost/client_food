import 'package:adaptive_navigation/adaptive_navigation.dart';
import 'package:auto_route/auto_route.dart';
import 'package:client_food/core/router/router.gr.dart';
import 'package:client_food/core/theme.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NavPage extends StatelessWidget {
  const NavPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [MenuRoute(), BascketRoute(), AboutRoute()],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return AdaptiveNavigationScaffold(
          body: MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaleFactor: ScaleSize.textScaleFactor(context),
            ),
            child: child,
          ),
          onDestinationSelected: tabsRouter.setActiveIndex,
          selectedIndex: tabsRouter.activeIndex,
          destinations: const [
            AdaptiveScaffoldDestination(title: 'menu', icon: Icons.menu_book),
            AdaptiveScaffoldDestination(
              title: 'shop',
              icon: Icons.shopping_cart,
            ),
            AdaptiveScaffoldDestination(
              title: 'settings',
              icon: Icons.settings,
            ),
          ],
        );
      },
    );
  }
}
