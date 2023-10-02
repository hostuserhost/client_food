// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:client_food/features/about/bloc/bloc.dart';

void main() {
  group('AboutBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          AboutBloc(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final aboutBloc = AboutBloc();
      expect(aboutBloc.state.customProperty, equals('Default Value'));
    });

    blocTest<AboutBloc, AboutState>(
      'CustomAboutEvent emits nothing',
      build: AboutBloc.new,
      act: (bloc) => bloc.add(const CustomAboutEvent()),
      expect: () => <AboutState>[],
    );
  });
}
