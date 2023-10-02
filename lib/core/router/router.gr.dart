// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:client_food/core/router/navpage.dart' as _i4;
import 'package:client_food/features/about/view/about_page.dart' as _i1;
import 'package:client_food/features/bascket/view/bascket_page.dart' as _i2;
import 'package:client_food/features/menu/view/menu_page.dart' as _i3;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    AboutRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AboutPage(),
      );
    },
    BascketRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.BascketPage(),
      );
    },
    MenuRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.MenuPage(),
      );
    },
    NavRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.NavPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AboutPage]
class AboutRoute extends _i5.PageRouteInfo<void> {
  const AboutRoute({List<_i5.PageRouteInfo>? children})
      : super(
          AboutRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.BascketPage]
class BascketRoute extends _i5.PageRouteInfo<void> {
  const BascketRoute({List<_i5.PageRouteInfo>? children})
      : super(
          BascketRoute.name,
          initialChildren: children,
        );

  static const String name = 'BascketRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MenuPage]
class MenuRoute extends _i5.PageRouteInfo<void> {
  const MenuRoute({List<_i5.PageRouteInfo>? children})
      : super(
          MenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'MenuRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.NavPage]
class NavRoute extends _i5.PageRouteInfo<void> {
  const NavRoute({List<_i5.PageRouteInfo>? children})
      : super(
          NavRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
