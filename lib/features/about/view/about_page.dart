import 'package:auto_route/annotations.dart';
import 'package:client_food/features/about/bloc/bloc.dart';
import 'package:flutter/material.dart';

/// {@template about_page}
/// A description for AboutPage
/// {@endtemplate}
@RoutePage()
class AboutPage extends StatelessWidget {
  /// {@macro about_page}
  const AboutPage({super.key});

  /// The static route for AboutPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const AboutPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AboutBloc(),
      child: const Scaffold(
        body: AboutView(),
      ),
    );
  }
}

/// {@template about_view}
/// Displays the Body of AboutView
/// {@endtemplate}
class AboutView extends StatelessWidget {
  /// {@macro about_view}
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('ef');
  }
}
