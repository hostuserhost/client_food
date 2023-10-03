import 'package:auto_route/auto_route.dart';
import 'package:client_food/core/widgets/charmon.dart';
import 'package:client_food/core/widgets/menucard.dart';
import 'package:client_food/core/widgets/top_search.dart';
import 'package:client_food/core/widgets/topbalance.dart';
import 'package:client_food/features/menu/bloc/addtocart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

@RoutePage()
class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OneAddCubit(),
      child: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  TopSearchPage(),
                  Spacer(
                    flex: 2,
                  ),
                  TopBalancePage(),
                  CharMon(),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: ResponsiveGridList(
                horizontalGridMargin: 10,
                minItemWidth: 140,
                maxItemsPerRow: 3,
                children: List.generate(
                  100,
                  (index) => const MenuCardPage(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
