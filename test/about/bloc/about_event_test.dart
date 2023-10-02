// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:client_food/features/about/bloc/bloc.dart';

void main() {
  group('AboutEvent', () { 
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const CustomAboutEvent(),
          isNotNull
        );
      });
    });
  });
}
