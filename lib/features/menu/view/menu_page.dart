import 'package:auto_route/auto_route.dart';
import 'package:client_food/core/widgets/menucard.dart';
import 'package:client_food/core/widgets/top_search.dart';
import 'package:client_food/core/widgets/topbalance.dart';
import 'package:client_food/features/menu/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

@RoutePage()
class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MenuBloc(),
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const TopSearchPage(),
                  const Spacer(
                    flex: 2,
                  ),
                 const TopBalancePage(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                        width: 0.5,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        r'$',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const MenuCardPage()
          ],
        ),
      ),
    );
  }
}
