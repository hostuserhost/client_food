import 'package:auto_route/annotations.dart';
import 'package:client_food/features/bascket/bloc/bloc.dart';
import 'package:flutter/material.dart';

/// {@template bascket_page}
/// A description for BascketPage
/// {@endtemplate}
@RoutePage()
class BascketPage extends StatelessWidget {
  /// {@macro bascket_page}
  const BascketPage({super.key});

  /// The static route for BascketPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const BascketPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BascketBloc(),
      child: const Scaffold(
        body: BascketView(),
      ),
    );
  }
}

/// {@template bascket_view}
/// Displays the Body of BascketView
/// {@endtemplate}
class BascketView extends StatelessWidget {
  /// {@macro bascket_view}
  const BascketView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('wef');
  }
}
